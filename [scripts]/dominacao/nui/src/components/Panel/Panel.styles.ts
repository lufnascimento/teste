import styled from "styled-components";
import TitleMask from './../../assets/masks/title-table.svg';

export const Panel = styled.div`
    width: 129.5rem;
    height: 69.6rem;
    border-radius: 1rem;
    border: 0.1rem solid rgb(166, 1, 58, .25);
    background: linear-gradient(180deg, rgba(0, 0, 0, 0.00) 0%, rgb(166, 1, 58, .12) 100%), rgba(0, 0, 0, 0.90);
    position: relative;

    overflow: visible;
`;

export const SkullImage = styled.img`
    height: 19.4rem;
    position: absolute;
    left: 0;
    top: 0;
    z-index: 1;
`;

export const LogoImage = styled.img`
    height: 6rem;
    position: absolute;
    right: 3rem;
    top: 3rem;
    z-index: 1;
`;

export const AmmunitionImage = styled.img`
    width: 14.2rem;
    height: 30.2rem;
    position: absolute;
    right: 0;
    bottom: -5rem;
    z-index: 1;
    pointer-events: none;
`;

export const TitleWrapper = styled.span`
    color: #FFF;
    text-shadow: 0rem 0rem 3.5rem rgba(255, 255, 255, 0.35);
    font-family: Bold;
    font-size: 1.7rem;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
    position: absolute;
    left: 17rem;
    top: 12.2rem;

    &::after {
        content: '';
        width: 3rem;
        height: 0.3rem;
        background-color: rgb(166, 1, 58, 1);
        position: absolute;
        bottom: -.1rem;
        right: 0;
        mask-image: url(${TitleMask});
    }
`;

export const MainWrapper = styled.main`
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    padding: 0 2rem;
    display: flex;
    gap: 0.83rem;
`;

export const Container = styled.section`
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    gap: 3.5rem;
`;

export const Points = styled.p`
    color: white;
    font-size: 1.5rem;
    font-weight: 400;
    position: absolute;

    top: 4rem;
    left: 70%;
    transform: translateX(-50%);

    b {
        color: rgb(166, 1, 58, 1);
    }
`