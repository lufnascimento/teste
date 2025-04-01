import React, { Context, createContext, useContext, useEffect, useState } from "react";
import { useNavigate } from "react-router-dom"; // Importe useNavigate
import { useNuiEvent } from "../hooks/useNuiEvent";
import { fetchNui } from "../utils/fetchNui";
import { isEnvBrowser } from "../utils/misc";
import { Data } from "../interfaces/global";
import Background from "../assets/background.svg";
import { debugData } from "../utils/debugData";

const VisibilityCtx = createContext<VisibilityProviderValue | null>(null);

interface VisibilityProviderValue {
  data: any;
  visible: boolean;
  setVisible: (visible: boolean) => void;
}

debugData([
  {
    action: 'setVisible',
    data: true
  }
])

export const VisibilityProvider: React.FC<{ children: React.ReactNode }> = ({ children }) => {
  const navigate = useNavigate();
  const [visible, setVisible] = useState(false);
  const [data, setData] = useState<Data | null>();

  useNuiEvent<boolean>('setVisible', (data) => {
    navigate('*'); 
    setVisible(data);
    fetchNui<Data>("requestInfos", {},
    {
      id: 1337,
      age: 20,
      name: "han kalashinikov",
      phone: "123-456",
      org: "Lider [PCC]",
      status: "Namorando",
      avatar: 'https://media.discordapp.net/attachments/852964597103329322/1313284255865901159/image.png?ex=674f92c6&is=674e4146&hm=b52ba90f6d8fe53755a9d67285216da58c14f5a625be871271d51e7e25f58e04&=&format=webp&quality=lossless',
      vips: ['vip1', 'vip2', 'vip3', 'vip3', 'vip3', 'vip3', 'vip3', 'vip3', 'vip3'],
      rankings: { 
        online: [
          { name: 'Pedrao', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},

        ], 
        famous: [
          { name: 'Psdedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
        ], 
        richs: [
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
        ],
        factions: [
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
          { name: 'Pedro', value: 'test'},
        ], 
      },
    }).then((data) => setData(data));
  });

  useEffect(() => {
    if (!visible) return;

    const keyHandler = (e: KeyboardEvent) => {
      if (["Escape"].includes(e.code)) {
        if (!isEnvBrowser()) fetchNui("hideFrame");
        else setVisible(false);
      }
    };

    window.addEventListener("keydown", keyHandler);
    return () => window.removeEventListener("keydown", keyHandler);
  }, [visible, navigate]);

  return (
    <VisibilityCtx.Provider
      value={{
        data,
        visible,
        setVisible,
      }}
    >
      {visible && (
        <div className="w-full h-full">
          <img src={Background} alt="" className="absolute top-0 left-0 w-full h-full object-cover" />
          <>{children}</>
        </div>
      )}
    </VisibilityCtx.Provider>
  );
};

export const useVisibility = () => useContext<VisibilityProviderValue>(VisibilityCtx as Context<VisibilityProviderValue>);
