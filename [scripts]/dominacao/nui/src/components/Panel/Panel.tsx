import { useMemo, FC, memo } from 'react';
import * as S from './Panel.styles';
import SkullImage from './../../assets/images/skull.png';
import LogoImage from './../../assets/images/logo.png';
import AmmunitionImage from './../../assets/images/ammunition.png';
import Header from './components/Header/Header';
import Accordion from './components/Accordion/Accordion';
import { usePanel } from '../../providers/PanelContext';
import { ItemData } from '../../types/ItemData';

const Panel: FC = () => {
    const { data } = usePanel();
    const list: ItemData[] = data?.list || [];

    const [firstSet, secondSet, thirdSet] = useMemo(() => [
        list.slice(0, 10),
        list.slice(10, 20),
        list.slice(20, 30)
    ], [list]);

    return (
        <S.Panel>
            <S.SkullImage src={SkullImage} />
            <S.LogoImage src={LogoImage} />
            <S.Points>Atinja: <b>300</b> para dominar!</S.Points>
            <S.AmmunitionImage src={AmmunitionImage} />
            <Header secondsAmountProp={data?.time} />
            <S.MainWrapper>
                <S.TitleWrapper>TOP 3 TIMES</S.TitleWrapper>
                <S.Container>
                    <Accordion data={firstSet} />
                    <Accordion data={secondSet} />
                    <Accordion data={thirdSet} />
                </S.Container>
            </S.MainWrapper>
        </S.Panel>
    );
}

export default memo(Panel);
