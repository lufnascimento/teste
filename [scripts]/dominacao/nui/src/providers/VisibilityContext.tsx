import React, { createContext, useContext, useState } from 'react';
import { useNuiEvent } from '../hooks/useNuiEvent';
import { isEnvBrowser } from '../utils/misc';
import { debugData } from '../utils/debugData';

interface VisiblityContextProps {
    visible: boolean;
    setVisible: React.Dispatch<React.SetStateAction<boolean>>;
}

debugData([
    {
		action: 'setVisible',
		data: true
	}
])

const VisibilityContext = createContext<VisiblityContextProps | null>(null);

export const VisiblityProvider: React.FC<{ children: React.ReactNode }> = ({ children }) => {
    const [visible, setVisible] = useState(false);

    useNuiEvent<boolean>('setVisible', (isVisible) => {
        setVisible(isVisible);
    });

    return (
        <VisibilityContext.Provider value={{ visible, setVisible }}>
            {children}
        </VisibilityContext.Provider>
    );
};

export const useVisibility = () => {
    const context = useContext(VisibilityContext);
    if (!context) {
        throw new Error('useVisibility must be used within a VisibilityProvider');
    }
    return context;
};