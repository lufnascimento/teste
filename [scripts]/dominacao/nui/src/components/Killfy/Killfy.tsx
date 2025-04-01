import { FC } from 'react';
import * as S from './Killfy.styles';
import PistolIcon from './../../assets/icons/pistol.svg';

interface KillfyProps {
    kill: string;
    death: string;
    weapon?: string; 
}

const Killfy: FC<KillfyProps> = ({ kill, death }) => {
    return (
        <S.Killfy>
            <S.DeathName>{death}</S.DeathName>
            <S.TypeTitle>
                <p>MATOU</p>
            </S.TypeTitle>
            <S.WeaponIcon src={PistolIcon} />
            <S.KillName>{kill}</S.KillName>
        </S.Killfy>
    );
};

export default Killfy;
