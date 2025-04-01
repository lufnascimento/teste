import ReactDOM from 'react-dom/client';
import { PanelProvider } from './providers/PanelContext';
import App from './App';
import { GlobalStyles } from './styles/GlobalStyles';
import { VisiblityProvider } from './providers/VisibilityContext';


ReactDOM.createRoot(document.getElementById('root')!).render(
    <VisiblityProvider>
        <PanelProvider>
            <GlobalStyles />
            <App />
        </PanelProvider>
    </VisiblityProvider>
);
