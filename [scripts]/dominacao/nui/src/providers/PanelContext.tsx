import React, { createContext, useContext, useState } from "react";
import { useNuiEvent } from "../hooks/useNuiEvent";
import { isEnvBrowser } from "../utils/misc";
import { debugData } from "../utils/debugData";

const PanelCtx = createContext<PanelProviderValue | null>(null)

interface GameData {
	list: {
		points: number;
		name: string;
		kills: number;
		position: number;
		deaths: number;
		time: number;
	}[];
	time: number;
	maxPoints: number;
}

interface PanelProviderValue {
	setPanelVisible: (visible: boolean) => void;
	panelVisible: boolean;
	data?: GameData;
}

debugData([
	{
		action: 'openPanel',
		data: {
			maxPoints: 220,
			list: [
				{
					points: 10,
					name: 'BCD',
					kills: 5,
					position: 2,
					deaths: 1,
					time: '10',
				},
				{
					points: 10,
					name: 'BCD',
					kills: 5,
					position: 2,
					deaths: 1,
					time: '10',
				},
			],
			time: 1200
		}
	},
])

export const PanelProvider: React.FC<{ children: React.ReactNode }> = ({ children }) => {
	const [panelVisible, setPanelVisible] = useState(false);
	const [data, setData] = useState<GameData | undefined>(undefined);

	useNuiEvent<GameData>('openPanel', (receivedData) => {
		setPanelVisible(true);
		setData(receivedData);
	});

	useNuiEvent('close', () => {
		setPanelVisible(false);
		setData(undefined);
	})

	return (
		<PanelCtx.Provider
			value={{
				panelVisible,
				setPanelVisible,
				data
			}}
		>
			{children}
		</PanelCtx.Provider>
	);
}

export const usePanel = () => {
	const context = useContext(PanelCtx);
	if (!context) {
		throw new Error("usePanel must be used within a PanelProvider");
	}
	return context;
}
