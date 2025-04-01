import styled from "styled-components";
import MaskTitle from './../../../../assets/masks/title.svg';

export const Header = styled.header`
    width: 100%;
    height: 10rem;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;

    &::before {
        content: '';
        width: 105.1rem;
        height: 0.1rem;
        background: linear-gradient(90deg, rgba(151, 71, 255, 0.00) 0%, rgb(166, 1, 58, 1) 54.33%, rgba(151, 71, 255, 0.00) 100%);
        position: absolute;
        bottom: 0;
    }
`;

export const InfoWrapper = styled.div<{ isLeft: boolean }>`
    display: flex;
    align-items: center;
    gap: 0.5rem;
    position: absolute;
    ${({ isLeft }) => isLeft ? 'left: 9rem' : 'right: 12rem'};

    p {
        color: rgba(255, 255, 255, 0.45);
        font-size: 1.3rem;
    }

    span {
        font-family: Bold;
    }
`;

export const InfoIcon = styled.img`
    height: 1rem;
`;

export const TitleBox = styled.div`
    width: 17.4rem;
    height: 3.5rem;
    background: rgb(166, 1, 58, 1);
    mask-image: url(${MaskTitle});
    mask-repeat: no-repeat;
    mask-size: 100% 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #FFF;
    text-shadow: 0rem 0rem 3.5rem 0rem rgba(255, 255, 255, 0.35);
    font-family: Bold;
    font-size: 2.3rem;
`;