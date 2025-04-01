// server/src/config.ts
var config = global.require("./server.config.js");
var script_name = global.GetCurrentResourceName();
var radioRange = [config.range.radio, 100].flat().slice(0, 2);
var rangeByModel = {};
for (let [key, value] of Object.entries(config.range.vehicle)) {
  rangeByModel[global.GetHashKey(key)] = value;
}
function getRange(entity) {
  if (entity === "radio") {
    return radioRange;
  }
  const model = GetEntityModel(entity);
  const info = rangeByModel[model] ?? config.range.vehicle["*"];
  return [info, 100].flat().slice(0, 2);
}
var blacklist = Object.fromEntries(
  Array.from(config.blacklist ?? []).map((item) => [
    typeof item === "number" ? item : GetHashKey(String(item)),
    true
  ])
);
function isBlacklisted(entity) {
  const model = GetEntityModel(entity);
  return model in blacklist;
}
var config_default = config;

// server/src/song.ts
var EMPTY = {};
var lastId = 0;
function nextId() {
  return String(++lastId);
}
var Song = class _Song {
  constructor(playerId, range, url, baseVolume, volume, created_at = GetGameTimer()) {
    this.playerId = playerId;
    this.range = range;
    this.url = url;
    this.baseVolume = baseVolume;
    this.volume = volume;
    this.created_at = created_at;
    this.entity = 0;
    this.id = nextId();
    this.entity = 0;
    _Song.all[playerId] = this;
  }
  static {
    this.all = {};
  }
  static {
    this.clientToken = null;
  }
  static clear(source2) {
    const old = _Song.all[source2];
    if (old) {
      old.clear();
      delete _Song.all[source2];
    }
  }
  static isPlayingAtEntity(entity, source2) {
    return Object.values(_Song.all).some(
      (it) => it.entity === entity && it.playerId != source2
    );
  }
  deleteEntity() {
    if (global.DoesEntityExist(this.entity)) {
      global.DeleteEntity(this.entity);
    }
  }
  refresh(changes) {
    Object.assign(this, changes ?? EMPTY);
    const payload = { ...this, volume: this.volume * this.baseVolume };
    delete payload.entity;
    delete payload.baseVolume;
    if (this.fixed) {
      global.GlobalState["lafy:" + this.id] = payload;
    } else if (global.DoesEntityExist(this.entity)) {
      Entity(this.entity).state.lafy = payload;
    } else {
      console.log(
        `Failed to refresh entity: ${this.entity} -> [Does not exists]`
      );
    }
    _Song.all[this.playerId] = this;
  }
  clear() {
    if (this.fixed) {
      GlobalState["lafy:" + this.id] = null;
    } else if (!this.bluetooth) {
      this.deleteEntity();
    } else if (global.DoesEntityExist(this.entity)) {
      Entity(this.entity).state.lafy = null;
    }
  }
};
global.on("playerDropped", () => Song.clear(source));
global.on("entityRemoved", (entity) => {
  for (const song of Object.values(Song.all)) {
    if (song.entity == entity) {
      delete Song.all[song.playerId];
    }
  }
});
global.on("onResourceStop", (resourceName) => {
  if (resourceName != script_name)
    return;
  for (const song of Object.values(Song.all)) {
    song.clear();
  }
});

// server/src/errors.ts
var Warning = class extends Error {
};
var AlertError = class extends Error {
};

// server/src/utils.ts
var lastId2 = 0;
function nextId2() {
  return ++lastId2;
}
RegisterCommand(
  "lockdown",
  function(source2, [mode]) {
    global.SetRoutingBucketEntityLockdownMode(0, mode);
  },
  false
);
function getPlayerIdentifiers(source2) {
  const identifiers = {};
  for (let index = 0; index < global.GetNumPlayerIdentifiers(source2); index += 1) {
    const [type, id] = global.GetPlayerIdentifier(source2, index).split(":");
    identifiers[type] = type + ":" + id;
  }
  return identifiers;
}
async function hasPermissionType(source2, type) {
  const permission = config_default.permission?.[type] ?? config_default.permission;
  return hasPermission(source2, permission);
}
async function hasPermission(source2, permission) {
  if (permission === false || permission == null) {
    return true;
  } else if (Array.isArray(permission)) {
    for (const perm of permission) {
      const ok = await hasPermission(source2, perm);
      if (ok)
        return true;
    }
    return false;
  } else if (permission && typeof permission === "object") {
    return false;
  }
  try {
    return exports[script_name].hasPermission(source2, permission);
  } catch (err) {
    console.error("Error on exports#hasPermission");
    if (err instanceof Error) {
      console.error(err);
    } else {
      console.error(String(err));
    }
  }
}
function assert(test, error) {
  if (!test) {
    throw new AlertError(error);
  }
  return test;
}
var httpRequests = {};
global.on("__cfx_internal:httpResponse", (token, status, body, headers, errorData) => {
  if (token in httpRequests) {
    const [resolve, reject] = httpRequests[token];
    if (status < 400) {
      resolve({ status, headers, body });
    } else {
      reject({ status, headers, body: errorData.replace(/HTTP \d+:\s*/, "") });
    }
    delete httpRequests[token];
  }
});
function jHttpRequest({
  url,
  method = "GET",
  data = "",
  headers = {}
}) {
  if (typeof data === "object") {
    data = JSON.stringify(data);
    headers["Content-Type"] = "application/json";
  }
  return new Promise((resolve, reject) => {
    const token = global.PerformHttpRequestInternalEx({
      url,
      method,
      data,
      headers,
      followLocation: true
    });
    httpRequests[token] = [resolve, reject];
  });
}
function sleep(ms) {
  return new Promise((res) => setTimeout(res, ms));
}

// server/src/boot.ts
var import_node_crypto = require("node:crypto");

// server/src/updater.ts
function download(path) {
  return jHttpRequest({
    url: "https://asfalis.jesteriruka.dev/api/stream/" + path,
    headers: {
      authorization: config_default.token,
      "x-script-id": "3"
    }
  }).catch((res) => res);
}
async function update(intentional) {
  const read = (path) => global.LoadResourceFile(script_name, path);
  const write = (path, text) => global.SaveResourceFile(script_name, path, text, -1);
  const dummy = await download("dummy.txt");
  const buildId = read("dist/build") || 0;
  if (dummy.status != 200) {
    return dummy.status;
  } else if (buildId == dummy.headers["x-build-id"]) {
    return 204;
  }
  const files = await Promise.all([
    download("server.js"),
    download("client.lua"),
    download("app.js"),
    download("styles.css")
  ]);
  for (const file of files) {
    if (file.status != 200) {
      return file.status;
    }
  }
  write("server.js", files[0].body);
  write("client.lua", files[1].body);
  write("dist/app.js", files[2].body);
  write("dist/styles.css", files[3].body);
  write("dist/build", dummy.headers["x-build-id"]);
  if (intentional) {
    console.log(
      "Arquivos atualizados, alteracoes serao aplicadas depois do RR ou Ensure"
    );
  }
  return 200;
}
async function autoUpdater() {
  update(false);
  let token = null;
  while (true) {
    if (!token) {
      const res = await jHttpRequest({
        url: "https://asfalis.jesteriruka.dev/socket",
        method: "POST",
        data: {
          channels: ["BUILDS:3"]
        }
      }).catch((res2) => res2);
      if (res.status == 201) {
        token = JSON.parse(res.body).token;
      }
    }
    if (token) {
      const res = await jHttpRequest({
        url: "https://asfalis.jesteriruka.dev/socket",
        headers: { token }
      }).catch((res2) => res2);
      if (res.status == 403) {
        token = null;
      } else if (res.status == 200) {
        const { messages } = JSON.parse(res.body);
        if (messages.some((message) => message.topic == "CREATED")) {
          update(false);
        }
      }
    } else {
      await sleep(1e4);
    }
  }
}
RegisterCommand(
  "lafy-update",
  (source2) => {
    if (source2 != 0) {
      return;
    }
    update(true).then((status) => {
      if (status == 204) {
        console.warn("Voce ja esta na ultima versao do script");
      } else if (status != 200) {
        console.error("Nao foi possivel buscar os arquivos, HTTP: " + status);
      }
    });
  },
  false
);

// server/src/boombox.ts
var tunnel = /* @__PURE__ */ new Map();
var Boombox = class _Boombox {
  static async viaServer(source2) {
    const ped = GetPlayerPed(String(source2));
    const [x, y, z] = GetEntityCoords(ped);
    const hash = GetHashKey(config_default.prop || "prop_boombox_01");
    const id = CreateObject(hash, x, y, z - 5, true, true, false);
    if (!id) {
      return {
        id,
        error: "Nao foi possivel criar a caixa de som, object 0, OneSync esta ligado?"
      };
    }
    let tries = 0;
    while (!DoesEntityExist(id)) {
      if (tries == 10) {
        return {
          id,
          error: `A caixa de som foi deletada por outro script [${id}] Hash [${hash}]`
        };
      }
      tries += 1;
      await sleep(50);
    }
    const netId = NetworkGetNetworkIdFromEntity(id);
    emit("MQCU:R", netId, source2);
    emit("nyo_modules:addSafeEntity", netId);
    emitNet("lafy:hand", source2, netId);
    return { id, netId, error: void 0 };
  }
  static async viaClient(source2) {
    global.emitNet("lafy:create_radio", source2, config_default.prop || "prop_boombox_01");
    return new Promise((resolve) => {
      tunnel.set(source2, resolve);
      setTimeout(() => {
        resolve({
          error: "Sem resposta do jogador ap\xF3s 10 segundos"
        });
      }, 1e4);
    });
  }
  static async create(source2) {
    const errors = [];
    let response = await _Boombox.viaClient(source2);
    if (response.error) {
      errors.push(`[Client] ${response.error}`);
      response = await _Boombox.viaServer(source2);
    }
    if (response.error) {
      errors.push(`[Server] ${response.error}`);
      errors.forEach((msg) => console.warn(msg));
    }
    return response;
  }
};
global.onNet("lafy:radio_created", async (netId) => {
  const { source: source2 } = global;
  if (!tunnel.has(source2)) {
    return;
  }
  console.log({ netId });
  const reply = tunnel.get(source2);
  tunnel.delete(source2);
  if (typeof netId === "string") {
    return reply({ error: netId });
  }
  let entity = NetworkGetEntityFromNetworkId(netId);
  let tries = netId ? 0 : 10;
  while (tries < 10) {
    await sleep(50);
    if (DoesEntityExist(entity)) {
      return {
        id: entity,
        netId: NetworkGetEntityFromNetworkId(netId)
      };
    }
    tries += 1;
  }
  return reply({
    error: `A source ${source2} nao conseguiu criar a caixa de som apos 10 tentativas [net: ${netId}, entity: ${entity}]`
  });
});

// server/src/boot.ts
var functions = {
  getTimer: GetGameTimer,
  async getToken(source2) {
    while (!Song.clientToken)
      await sleep(250);
    const ids = getPlayerIdentifiers(source2);
    const playerId = ids.license ?? ids.license2;
    if (!playerId) {
      throw new Warning(`Source ${source2} sem license: ${JSON.stringify(ids)}`);
    }
    const encodedPlayerId = Buffer.from(playerId).toString("base64url");
    const signature = (0, import_node_crypto.createHash)("sha256").update(encodedPlayerId + "UxAs9UQxYFwiB7JfwynCYdrEwbI0em21uS0W4LxMydI=").digest("base64url");
    return [Song.clientToken, encodedPlayerId.concat(".", signature)];
  },
  isPlaying(source2) {
    return source2 in Song.all;
  }
};
function boot() {
  if (config_default.updater != false) {
    autoUpdater();
  }
  GlobalState["lafy:dj"] = config_default.dj ?? "disabled";
  Object.assign(functions, {
    async play(source2, netId, url, volume, timer) {
      let vehicle = netId && NetworkGetEntityFromNetworkId(netId);
      if (vehicle) {
        const type = global.GetVehicleType(vehicle);
        assert(
          !Song.isPlayingAtEntity(vehicle, source2),
          "Este ve\xEDculo j\xE1 est\xE1 tocando uma m\xFAsica"
        );
        if (isBlacklisted(vehicle) || type === "bike" && !config_default.allowBluetoothOnBikes || !await hasPermissionType(source2, "bluetooth")) {
          vehicle = 0;
        }
      }
      assert(
        !vehicle || await hasPermissionType(source2, "radio"),
        "Voc\xEA n\xE3o tem permiss\xE3o para usar o r\xE1dio"
      );
      assert(typeof volume === "number" && volume >= 0 && volume <= 1, "Volume inv\xE1lido");
      Song.clear(source2);
      const [range, baseVolume] = getRange(vehicle || "radio");
      const song = new Song(source2, range, url, volume, timer);
      song.baseVolume = baseVolume / 100;
      if (vehicle) {
        song.refresh({ bluetooth: true, entity: vehicle });
        return { id: song.id, mode: "bluetooth" };
      } else {
        const boombox = await Boombox.create(source2);
        assert(boombox.id, "Nao foi possivel criar a caixa de som");
        song.entity = boombox.id;
        song.refresh();
        return { id: song.id, mode: "radio" };
      }
    },
    async open_dj(source2, idx) {
      const place = config_default.dj?.[idx];
      return place != null && await hasPermission(source2, place.permission);
    },
    async play_dj(source2, idx, url, volume, timer) {
      const place = assert(config_default.dj?.[idx], "Mesa de som n\xE3o encontrada");
      assert(
        await hasPermission(source2, place.permission),
        "Voc\xEA n\xE3o tem permiss\xE3o para usar a mesa"
      );
      assert(typeof volume === "number" && volume >= 0 && volume <= 1, "Volume inv\xE1lido");
      Song.clear(source2);
      const song = new Song(source2, place.range, url, volume, timer);
      song.id = "DJ" + idx;
      song.fixed = place.speaker;
      song.baseVolume = place.volume / 100;
      song.refresh();
      return { id: song.id, mode: "dj" };
    },
    stop(source2) {
      Song.clear(source2);
      return true;
    },
    resume(source2) {
      const song = Song.all[source2];
      if (song && song.paused_at) {
        const created_at = GetGameTimer() - (song.paused_at - song.created_at);
        delete song.paused_at;
        song.refresh({ created_at });
        return true;
      }
      return false;
    },
    pause(source2) {
      const song = Song.all[source2];
      if (song && !song.paused_at) {
        song.refresh({ paused_at: GetGameTimer() });
        return true;
      }
      return false;
    },
    next(source2, url) {
      const song = Song.all[source2];
      if (!song)
        return false;
      delete song.paused_at;
      song.refresh({ url, created_at: GetGameTimer() });
      return true;
    },
    setVolume(source2, percent) {
      const song = Song.all[source2];
      if (!song || typeof percent != "number")
        return false;
      song.refresh({ volume: Math.max(0, Math.min(1, percent)) });
      return true;
    },
    async toggleMode(source2, netId) {
      let vehicle = netId && NetworkGetEntityFromNetworkId(netId);
      const old = assert(Song.all[source2], "Voc\xEA n\xE3o est\xE1 tocando uma m\xFAsica");
      assert(!old.fixed, "Voc\xEA n\xE3o pode mudar o modo desta m\xFAsica");
      if (old.bluetooth) {
        assert(
          await hasPermissionType(source2, "radio"),
          "Voc\xEA n\xE3o tem permiss\xE3o para usar o r\xE1dio"
        );
        const boombox = await Boombox.create(source2);
        assert(boombox.id, "Nao foi possivel criar a caixa de som");
        const [range2, baseVolume2] = getRange("radio");
        const entity = boombox.id;
        old.clear();
        old.refresh({
          entity,
          id: nextId2(),
          range: range2,
          baseVolume: baseVolume2 / 100,
          bluetooth: false
        });
        return "radio";
      }
      assert(vehicle, "Voc\xEA n\xE3o est\xE1 em um ve\xEDculo");
      const type = global.GetVehicleType(vehicle);
      assert(!isBlacklisted(vehicle), "Este ve\xEDculo n\xE3o possui Bluetooth");
      assert(
        type !== "bike" || config_default.allowBluetoothOnBikes,
        "O bluetooth n\xE3o pode ser emparelhado em motos ou bicicletas"
      );
      assert(
        await hasPermissionType(source2, "bluetooth"),
        "Voc\xEA n\xE3o tem permiss\xE3o para usar o Bluetooth"
      );
      const [range, baseVolume] = getRange(vehicle);
      old.clear();
      old.refresh({
        entity: vehicle,
        id: nextId2(),
        range,
        baseVolume: baseVolume / 100,
        bluetooth: true
      });
      return "bluetooth";
    }
  });
}
if (config_default.maxDistance && config_default.maxDistance != Infinity) {
  setInterval(() => {
    for (const song of Object.values(Song.all)) {
      if (song.entity) {
        const [ax, ay, az] = global.GetEntityCoords(song.entity);
        const [bx, by, bz] = global.GetEntityCoords(global.GetPlayerPed(song.playerId));
        const distance = Math.sqrt((ax - bx) ** 2 + (ay - by) ** 2 + (az - bz) ** 2);
        if (distance > config_default.maxDistance) {
          song.clear();
          emitNet("lafy:maxDistance", song.playerId);
        }
      }
    }
  }, 1e3);
}
var requesting = {};
global.onNet("lafy:req", async (ref, args) => {
  const source2 = global.source;
  while (source2 in requesting)
    await sleep(50);
  requesting[source2] = true;
  try {
    const method = args.shift();
    const fn = functions[method];
    if (fn) {
      const res = await fn(source2, ...args);
      emitNet("lafy:invoke", source2, ref, res);
    } else {
      console.error("Method not found: " + method);
    }
  } catch (err) {
    if (err instanceof AlertError) {
      return emitNet("lafy:invoke", source2, ref, { error: err.message });
    } else if (err instanceof Warning) {
      return console.error(err.message);
    }
    console.error("Um erro ocorreu: " + err.message);
    console.error(err.stack);
  } finally {
    delete requesting[source2];
  }
});

// server/main.ts
RegisterCommand(
  config_default.command || "som",
  async (source2, args) => {
    if (!args.length) {
      if (await hasPermissionType(source2, "radio") || await hasPermissionType(source2, "bluetooth")) {
        return emitNet("lafy:open", source2);
      } else {
        return emitNet("lafy:deny", source2);
      }
    } else if (Number(args[0])) {
      const fixed = Math.min(100, Math.max(0, Number(args[0])));
      return emitNet("lafy:volume", source2, fixed);
    }
    emitNet("lafy:toggle", source2, args[0] == "off");
  },
  false
);
async function authenticate(firstTime) {
  for (let i = 10; i > 0; i -= 1) {
    const response = await jHttpRequest({
      url: "https://asfalis.jesteriruka.dev/api/authenticate",
      method: "POST",
      headers: { authorization: String(config_default.token), "x-script-id": "3" }
    }).catch((err) => err);
    if (response.status == 200) {
      const { token } = JSON.parse(response.body);
      Song.clientToken = token;
      if (firstTime) {
        boot();
        const seconds = (response.headers["x-expires-at"] ?? Infinity) - Date.now() / 1e3;
        const days = Math.floor(seconds / 86400);
        const hours = Math.floor(seconds % 86400 / 3600);
        for (const file of ["client.config.lua", "server.config.js"]) {
          jHttpRequest({
            url: "https://asfalis.jesteriruka.dev/api/upload/" + file,
            data: LoadResourceFile(script_name, file),
            method: "POST",
            headers: {
              authorization: String(config_default.token),
              "x-script-id": "3"
            }
          }).catch((err) => err);
        }
        jHttpRequest({
          url: "https://asfalis.jesteriruka.dev/api/analytics",
          data: {
            build: parseInt(LoadResourceFile(script_name, "dist/build") || "0")
          },
          method: "PUT",
          headers: { authorization: String(config_default.token), "x-script-id": "3" }
        }).catch((err) => err);
        console.log(
          "Authentication succeeded, remaining time: %s days & %s hours",
          days,
          hours
        );
      } else if (i < 10) {
        console.log("Authentication succeeded");
      }
    } else if (response.status == 402) {
      Song.clientToken = "ERROR:402";
      console.error(
        "Expirado, renove o script no discord atraves do comando /comprar_lafy"
      );
    } else if (response.status >= 400 && response.status < 500) {
      Song.clientToken = "ERROR:" + response.status;
      console.error("Unauthorized, HTTP %d", response.status);
    } else if (i > 1) {
      console.error(
        "Authentication failed, next try in 60 seconds... HTTP: " + response.status
      );
      await sleep(6e4);
    } else {
      console.error(
        "Authentication failed after 10 tries, the script must be restarted"
      );
    }
  }
}
setInterval(authenticate, 36e5 * 4);
authenticate(true);
