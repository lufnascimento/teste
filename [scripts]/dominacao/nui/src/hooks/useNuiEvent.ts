import { useEffect, useRef } from "react";

interface NuiMessageData<T = unknown> {
    action: string;
    data: T;
}

type NuiHandlerSignature<T> = (data: T) => void;

export const useNuiEvent = <T = any>(
    action: string,
    handler: NuiHandlerSignature<T>
) => {
    const savedHandler = useRef<NuiHandlerSignature<T>>(handler);

    useEffect(() => {
        savedHandler.current = handler;

        const eventListener = (event: MessageEvent<NuiMessageData<T>>) => {
            const { action: eventAction, data } = event.data;

            if (savedHandler.current && eventAction === action) {
                savedHandler.current(data);
            }
        };

        window.addEventListener("message", eventListener);

        return () => {
            window.removeEventListener("message", eventListener);
        };
    }, [action, handler]);
};
