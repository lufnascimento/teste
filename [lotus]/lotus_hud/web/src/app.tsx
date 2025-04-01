import { VisibilityProvider } from "./providers/visibility";

import { PlayerStats } from "./components/player-stats";
import { Velocimeter } from "./components/velocimeter";

import Logo from "/images/logo.png";
import Safe from "/images/safezone.png";
import Cupom from "/images/cupom.png";
import Bullets from "/icons/bullets.svg";

import { useNuiEvent } from "./hooks/useNuiEvent";
import { useState } from "react";
import { Informations } from "./components/informations";
import { Assault } from "./components/assault";
import { NotifyList } from "./components/notify-list";
import { Progress } from "./components/progress";
import { IData, useData } from "./hooks/useData";
import { debugData } from "./utils/debugData";
import { PlayerStats2 } from "./components/player-stats2";
import Velocimeter2 from "./components/velocimeter2";
import Management from "./components/management";
import { useHud } from "./hooks/useHud";
import { Clock } from "./components/clock";

debugData([{ action: "config", data: { show: true } }]);

setInterval(() => {
  debugData([
    {
      action: "update",
      data: {
        health: Math.round(Math.random() * 100),
        armour: Math.round(Math.random() * 100),
        street: "asdsad",
        talking: true,
        volume: 3,
        frequency: 100,
        vehicle: {
          show: true,
          rpm: Math.round(Math.random() * 100),
          speed: Math.round(Math.random() * 400),
          engine: Math.round(Math.random() * 100),
          nitro: Math.round(Math.random() * 100),
          fuel: Math.round(Math.random() * 100),
          march: 1,
          light: false,
          seatbeat: true,
          lock: false,
        },
        weapon: {
          show: true,
          image: "test",
          current: 10,
          max: 20,
        },
      },
    },
  ]);
}, 1000);

export function App() {
  const { data, updateData } = useData();

  const { hud } = useHud();
  const [safe, setSafe] = useState(true);
  const [assault, setAssault] = useState(true);
  const [openedManagement, setOpenedManagement] = useState(false);

  useNuiEvent<IData>("update", (data) => {
    updateData(data);
    if (data.safezone !== undefined) setSafe(data.safezone);
    if (data.assaultTime !== undefined) setAssault(data.assaultTime);
  });

  useNuiEvent<{ show: boolean }>("config", ({ show }) => {
    show ? setOpenedManagement(true) : setOpenedManagement(false);
  });

  return (
    <>
      <VisibilityProvider>
        <Clock />
        <div className="flex flex-col items-center gap-4 absolute top-6 -translate-x-1/2 left-1/2">
          <img src={Logo} alt="logo" className="logo" />
          {safe && <img src={Safe} className="h-[2.375rem]" />}
        </div>

        <Progress />
        {openedManagement && (
          <Management/>
        )}

        <div className="h-full flex flex-col gap-4 justify-between items-end overflow-hidden">
          <div className="h-full flex flex-col items-end gap-5 overflow-hidden">
            <Informations />
            {assault && <Assault />}
            {data.weapon?.show && (
              <div className="flex items-center gap-[5px]">
                <img src="./images/bullets.png" alt="" />
                <div className="h-[1.875rem] px-2.5 bg-gradient-to-r from-black/60 to-black/50 border border-white/10 rounded-tl-lg rounded-br-lg flex items-center gap-2 text-white text-xs font-bold">
                  <p className="text-white/50 text-sm font-normal">
                    <strong className="text-white font-bold">{data.weapon.current}</strong>/{data.weapon.max}
                  </p>
                </div>
              </div>
            )}
            <NotifyList />
          </div>
          {hud.stats === 1 ? (
            <PlayerStats />
          ) : (
            <PlayerStats2 />
          )}
          <div className="flex gap-[.94rem]">
            {hud.velocimeter === 1 ? <Velocimeter /> : <Velocimeter2 />}

          </div>
        </div>
      </VisibilityProvider>
      
    </>
  );
}
