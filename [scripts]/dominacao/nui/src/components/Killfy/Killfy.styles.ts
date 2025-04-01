import styled from "styled-components";
import MaskType from './../../assets/masks/killfy-type.svg';
import Left from './../../assets/masks/notify-left.svg';
import Right from './../../assets/masks/notify-right.svg';

export const Killfy = styled.div`
    width: max-content;
    padding: 1.5rem 2.6rem;
    border-radius: 0.8rem;
    border: 0.1rem solid rgb(166, 1, 58, .25);
    background: linear-gradient(180deg, rgba(0, 0, 0, 0.00) 0%, rgb(166, 1, 58, .12) 100%), rgba(0, 0, 0, 0.90);
    position: relative;
    display: flex;
    font-size: 1.3rem;
    font-family: Bold;

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

export const KillName = styled.span`
    color: rgb(166, 1, 58, 1);
    text-shadow: 0rem 0rem 3.5rem rgba(255, 255, 255, 0.35);
    left: 2.6rem;
`;

export const WeaponIcon = styled.img`
    width: 1.6rem;
    left: 9.4rem;
    margin-left: 0.9rem;
`;

export const TypeTitle = styled.div`
    width: 8.4rem;
    height: 2.1rem;
    background-color: rgb(166, 1, 58, 1);
    display: flex;
    justify-content: center;
    align-items: center;
    left: 13.8rem;
    mask-image: url(${MaskType});
    mask-size: 100% 100%;
    margin-left: 2.7rem;

    p {
        margin-top: -0.2rem;
    }
`;

export const DeathName = styled.span`
    margin-left: 2.7rem;
    text-shadow: 0px 0px 35px rgba(255, 255, 255, 0.35);
`;