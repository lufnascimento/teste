import { FC } from 'react';
import * as S from './Notify.styles';
import BellIcon from './../../assets/icons/bell.svg';

const Notify: FC = () => {
    return (
        <S.Notify>
            <S.BellIcon src={BellIcon} />
            <p>APERTE <span>CAPSLOCK</span> PARA ACESSAR <br /> A PONTUAÇÃO DA <span>DOMINAÇÃO GERAL</span></p>
        </S.Notify>
    );
};

export default Notify;
