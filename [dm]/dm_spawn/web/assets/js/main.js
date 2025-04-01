class App {
  constructor(rootElement, config) {
    if (!(rootElement instanceof HTMLElement) || typeof config !== "object") {
      throw new Error("Parâmetros inválidos para o construtor App");
    }

    this._config = config;
    this._rootElement = rootElement;
    this._spawnSelected = config.spawns[0]
    this._containerCards = rootElement.querySelector(".locales");

    this._init();
  }

  _init() {
    this._config.spawns.forEach((spawn, index) => this._createCard(spawn, index));
    window.addEventListener("message", (event) =>
      this._handleVisibilityMessage(event)
    );
    this._registerButtonEvent(".spawn", () => this._spawn(this._spawnSelected));
    this._registerButtonEvent(".last_local", () => this._lastLocation());
    this._registerButtonEvent(".special_spawn", () => this._factionLocation());
  }

  _registerButtonEvent(selector, callback) {
    const button = this._rootElement.querySelector(selector);
    if (button) {
      button.addEventListener("click", callback);
    }
  }

  _createCard(item, index) {
    const cardElement = document.createElement("div");
    cardElement.classList.add('local')
    cardElement.innerHTML = `
      <div class="content">
        <button>
          <img src="./assets/images/loc.svg" alt="Selecionar">
          SELECIONAR
        </button>
      </div>
    `;
    cardElement.querySelector('.content').style.backgroundImage = `url(${item.image})`
    if (index === 0) {
      cardElement.querySelector('.content').classList.add('selected')
    }
    cardElement.addEventListener("click", () => {
      for (const card of document.querySelectorAll('.content')) {
        card.classList.remove('selected')
      }
      cardElement.querySelector('.content').classList.add('selected')
      this._setCam(item, cardElement)
      this._spawnSelected = item
    });
    cardElement.querySelector('button').addEventListener("click", () => this._spawn(item));
    this._containerCards.appendChild(cardElement);
  }

  // _selectCard(item, cardElement) {
  //   const activeItem = this._containerCards.querySelector(".selected");
  //   if (activeItem) {
  //     activeItem.classList.remove("selected");
  //   }
  //   cardElement.classList.add("selected");

  //   const infoBox = this._rootElement.querySelector(".info-box");
  //   const textArea = this._rootElement.querySelector(".text-area");
  //   const mapArea = this._rootElement.querySelector(".map-area");

  //   if (infoBox && textArea) {
  //     infoBox.textContent = item.name;
  //     textArea.textContent = item.description;
  //   }

  //   if (mapArea && item.position) {
  //     mapArea.style.backgroundSize = "500% 700%";
  //     mapArea.style.backgroundPosition = `-${item.position.left}rem -${item.position.top}rem`;
  //   }
  // }

  _setCam(spawn, cardElement) {
    console.log(spawn)
    document.querySelector('.local.selected')?.classList.remove('selected')
    cardElement.classList.add('selected')
    this._spawnSelected = spawn
    fetch(`${this._config.url}/SetCam`, {
      method: 'POST',
      body: JSON.stringify({ spawn })
    })
  }

  _spawn(spawn) {
    this._sendPostRequest(spawn)
  }

  _lastLocation() {
    this._sendPostRequest("last");
  }

  _factionLocation() {
    this._sendPostRequest("faction");
  }

  _sendPostRequest(callback) {
    fetch(`${this._config.url}/ButtonClick`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ callback }),
    }).then(() => this._setDisplay(false)).catch((err) => console.error("Erro ao enviar a solicitação POST:", err));
  }

  _handleVisibilityMessage({ data }) {
    if (data && data.action) {
      this._setDisplay(data.action === "open", data.inFaction);
    }
  }

  _setDisplay(visible, inFaction) {
    document.body.style.display = visible ? "flex" : "none";
    document.querySelector(".special_spawn").style.opacity = inFaction ? 1 : .2;
    document.querySelector(".special_spawn").style.pointerEvents = inFaction ? "all" : "none";
    document.querySelector(".special_spawn img").style.display = inFaction ? "none" : "block";
  }
}

const rootElement = document.querySelector("body");
new App(rootElement, config);

if (!window.invokeNative) {
  window.postMessage({
    action: "open",
    inFaction: false
  });
}
