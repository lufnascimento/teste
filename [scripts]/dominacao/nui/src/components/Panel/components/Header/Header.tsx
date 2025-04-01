import { useEffect, useState } from 'react'

import * as S from './Header.styles';
import InfoIcon from './../../../../assets/icons/info.svg';
import TimeIcon from './../../../../assets/icons/time.svg';

type HeaderProps = {
    secondsAmountProp?: number;
}

const Header: React.FC<HeaderProps> = ({ secondsAmountProp = 60 }) => {
    const [secondsAmount, setSecondsAmount] = useState<number>(secondsAmountProp)

    useEffect(() => {
        setTimeout(() => {
            if (secondsAmount! >= 0) setSecondsAmount(state => state! - 1)
        }, 1000)
    }, [secondsAmount])

    const hours = Math.floor((secondsAmount % (24 * 60 * 60)) / (60 * 60))
    const minutes = Math.floor((secondsAmount % (60 * 60)) / 60)
    const seconds = Math.floor((secondsAmount % (24 * 60 * 60)) % 60)

    return (
        <S.Header>
            <S.InfoWrapper isLeft={true}>
                <S.InfoIcon src={InfoIcon} />
                <p>Tempo dentro da área<span> 1 minutos = 1 pontos, 1 kill = 5 pontos</span></p>
            </S.InfoWrapper>
            <S.TitleBox>
                DOMINAÇÃO
            </S.TitleBox>
            <S.InfoWrapper isLeft={false}>
                <S.InfoIcon src={TimeIcon} />
                <p>{hours}:{minutes}:{seconds}s</p>
            </S.InfoWrapper>
        </S.Header>
    );
}

export default Header;