import { createGlobalStyle } from "styled-components";
import Bold from './../assets/fonts/AmpleSoftPro-Bold.ttf';
import Regular from './../assets/fonts/AmpleSoftPro-Regular.ttf';

export const GlobalStyles = createGlobalStyle`
    @font-face {
        font-family: Bold;
        src: url(${Bold});
    }

    @font-face {
        font-family: Regular;
        src: url(${Regular});
    }
    
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        user-select: none;

        &::-webkit-scrollbar {
            display: none;
        }
    }

    html {
        font-size: 62.5%;
    }

    body {
        width: 100vw;
        height: 100vh;
        font-family: Regular;
    }

    input[type=number]::-webkit-inner-spin-button { 
        -webkit-appearance: none;
        
    }

    input[type=number] { 
        -moz-appearance: textfield;
        appearance: textfield;
    }

    img {
        -webkit-user-drag: none;
        -khtml-user-drag: none;
        -moz-user-drag: none;
        -o-user-drag: none;
        user-drag: none;
    }

    .Toastify__toast {
        background: inherit;
        box-shadow: none;
        color: inherit;
        min-height: 0 !important;
    }

    .Toastify__toast-body {
        margin: 0;
        padding: 0;
    }

    .Toastify__toast-container {
        bottom: 0 !important; 
        right: 0 !important;
        height: auto !important;
    }

    @media (max-width: 1366px) {
        html {
            font-size: 40%;
        }
    }

    @media (max-width: 1250px) {
        html {
            font-size: 40%;
        }
    }

    @media (max-width: 1150px) {
        html {
            font-size: 36%;
        }
    }

    @media (max-width: 1000px) {
        html {
            font-size: 34%;
        }
    }

    @media (max-width: 970px) {
        html {
            font-size: 30%;
        }
    }

    @media (max-width: 850px) {
        html {
            font-size: 29%;
        }
    }

    @media (max-width: 750px) {
        html {
            font-size: 28%;
        }
    }

    @media (max-width: 650px) {
        html {
            font-size: 24%;
        }
    }
`;