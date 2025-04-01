import { isEnvBrowser } from "../utils/misc";

const callApi = async <T = any>(eventName: string, data?: any, mockData?: T): Promise<T> => {
    const options = {
        method: 'post',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8',
        },
        body: JSON.stringify(data),
    };

    if (isEnvBrowser() && mockData) {
        return mockData;
    }

    const resourceName = (window as any).GetParentResourceName ? (window as any).GetParentResourceName() : 'decrypt-store';

    const resp = await fetch(`https://${resourceName}/${eventName}`, options);

    if (!resp.ok) {
        throw new Error(`Erro ao fazer chamada da API: ${resp.status} - ${resp.statusText}`);
    }

    const respFormatted = await resp.json();
    return respFormatted;
};

export default callApi;