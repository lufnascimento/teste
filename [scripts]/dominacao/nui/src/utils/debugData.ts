import { isEnvBrowser } from './misc';

interface DebugEvent<T = unknown> {
    action: string;
    data: T;
}

const isDevelopment = import.meta.env.MODE === 'development' && isEnvBrowser();

export const debugData = <P>(events: DebugEvent<P>[], timer = 1000): void => {
    if (isDevelopment) {
        for (const event of events) {
            setTimeout(() => {
                window.dispatchEvent(
                    new MessageEvent('message', {
                        data: {
                            action: event.action,
                            data: event.data,
                        },
                    }),
                );
            }, timer);
        };
    };
};