import { ToastContainer } from "react-toastify";
import styled from "styled-components";

export const App = styled.div`
    width: 100vw;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
`;

export const NotifyArea = styled(ToastContainer)`
    width: 100%;
    height: 100%;
    position: absolute;
    right: 0;
    top: 25rem;
    z-index: -1;
    padding: 3rem 0;
`;

export const NotifyDom = styled.img`
    top: 28rem;
    right: 2rem;
    position: absolute;
    height: 16rem;
`

export const Star = styled.img`
    bottom: 4rem;
    position: absolute;
`