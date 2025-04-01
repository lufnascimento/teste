import styled from "styled-components";
import Left from './../../assets/masks/notify-left.svg';
import Right from './../../assets/masks/notify-right.svg';

export const Notify = styled.div`
    width: max-content;
    padding: 1.5rem 5.3rem;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 0.8rem;
    border: 0.1rem solid rgb(166, 1, 58, .25);
    background: linear-gradient(180deg, rgba(0, 0, 0, 0.00) 0%, rgb(166, 1, 58, .12) 100%), rgba(0, 0, 0, 0.90);
    color: #FFF;
    text-align: center;
    text-shadow: 0rem 0rem 3.5rem rgba(255, 255, 255, 0.35);
    font-family: Bold;
    font-size: 1.3rem;
    font-style: normal;
    font-weight: 700;
    position: absolute;
    overflow: visible;
    right: 1.2rem;
    top: 20rem;

    span {
        color: rgb(166, 1, 58, 1);
    }

    &::before {
        content: '';
        width: 5.5161rem;
        height: 0.9377rem;
        background-color: rgb(166, 1, 58, 1);
        position: absolute;
        top: -.3rem;
        left: -1.7rem;
        transform: rotate(-8.265deg);
        z-index: 1;
        mask-image: url(${Left});
        mask-size: 100% 100%;
    }

    &::after {
        content: '';
        width: 2.5416rem;
        height: 0.9132rem;
        transform: rotate(170.491deg);
        background-color: rgb(166, 1, 58, 1);
        position: absolute;
        bottom: -.4rem;
        right: -1rem;
        z-index: 1;
        mask-image: url(${Right});
        mask-size: 100% 100%;
    }
`;

export const BellIcon = styled.img`
    height: 1.9rem;
    position: absolute;
    left: 2.1rem;
`;