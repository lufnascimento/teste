import { useState, FC } from "react";
import { toast } from "react-toastify";
import * as S from "./App.styles";
import Panel from "./components/Panel/Panel";
import { usePanel } from "./providers/PanelContext";
import { useVisibility } from "./providers/VisibilityContext";
import { useNuiEvent } from "./hooks/useNuiEvent";
import Notify from "./components/Notify/Notify";
import Killfy from "./components/Killfy/Killfy";
import NotifyDomEnd from "./assets/images/notify2.png";
import NotifyDomStart from "./assets/images/notify.png";

import Star1 from "./assets/images/star-1.png";
import Star2 from "./assets/images/star-2.png";
import Star3 from "./assets/images/star-3.png";
import Star4 from "./assets/images/star-4.png";
import Star5 from "./assets/images/star-5.png";

import "react-toastify/dist/ReactToastify.css";
import { debugData } from "./utils/debugData";

interface KillfyData {
  kill: string;
  death: string;
  weapon: string;
}

interface NotifyDom {
  type: string;
  visibled: boolean;
}

interface KillStreak {
  amount: number;
  visible: boolean;
}

interface ProgressData {
  max: number
  current: number
};

type TimeData = number;

debugData([
  { action: "killstreak", data: { visible: true, amount: 3 } },
  { action: "progress", data: { current: 150, max: 300 } },
  { action: "notifydom", data: { visibled: true, type: "end" } },
]);

const App: FC = () => {
  const { visible } = useVisibility();
  const { panelVisible } = usePanel();
  const [killStreak, setKillStreak] = useState<KillStreak>();
  const [notifyDom, setNotifyDom] = useState<NotifyDom>();

  useNuiEvent<KillfyData>("killfy", (data) => {
    toast(<Killfy {...data} />, {
      autoClose: 5000,
      hideProgressBar: true,
      rtl: true,
      closeOnClick: false,
    });
  });

  useNuiEvent("notifydom", (data) => {
    setNotifyDom(data);
  });

  useNuiEvent("killstreak", (data) => {
    setKillStreak(data);
  });

  return (
    <S.App>
      {visible ? (
        <>
          {panelVisible && <Panel />}
          <Notify />
          <S.NotifyArea />
          {killStreak?.visible && (
            <S.Star src={killStreak.amount === 1 ? Star1 : killStreak.amount === 2 ? Star2 : killStreak.amount === 3 ? Star3 : killStreak.amount === 4 ? Star4 : Star5} />
          )}
        </>
      ) : null }
      {notifyDom?.visibled && <S.NotifyDom src={notifyDom.type === "start" ? NotifyDomStart : NotifyDomEnd} />}
    </S.App>
  );
};

export default App;
