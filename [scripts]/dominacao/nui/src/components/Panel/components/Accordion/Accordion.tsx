import { useState, useCallback, FC, memo } from 'react';
import * as S from './Accordion.styles';
import TargetIcon from './../../../../assets/icons/target.svg';
import SkullIcon from './../../../../assets/icons/skull.svg';
import TimeIcon from './../../../../assets/icons/time.svg';
import MenuIcon from './../../../../assets/icons/menu.svg';
import { ItemData } from '../../../../types/ItemData';

interface AccordionProps {
    data: ItemData[];
}

const Accordion: FC<AccordionProps> = ({ data }) => {
    const [openItem, setOpenItem] = useState<string>("0");

    const handleOpenItem = useCallback((key: number) => {
        setOpenItem(String(key));
    }, []);

    return (
        <S.Accordion>
            <S.Bg />
            <S.AccordionContainer type="single" collapsible value={openItem}>
                {data.length > 0 ? data.map((item: ItemData, key: number) => (
                    <S.AccordionItem value={String(key)} key={key}>
                        <S.AccordionTrigger onClick={() => handleOpenItem(key)}>
                            <S.Points>
                                {item.points} PONTOS
                            </S.Points>
                            <S.Name>
                                {item.name.toUpperCase() || "DESCONHECIDO"}
                            </S.Name>
                            <S.KillsWrapper>
                                <p>KILLS</p>
                                <span>{item.kills}</span>
                            </S.KillsWrapper>
                            <S.Position>
                                {item.position}
                            </S.Position>
                        </S.AccordionTrigger>
                        <S.AccordionContent>
                            <S.ContainerContent>
                                <S.ItemWrapper>
                                    <img src={TargetIcon} alt="Target Icon" />
                                    <p>KILLS</p>
                                    <span>{item.kills}</span>
                                </S.ItemWrapper>
                                <S.ItemWrapper>
                                    <img src={TimeIcon} alt="Time Icon" />
                                    <p>TEMPO</p>
                                    <span>{item.time}MIN</span>
                                </S.ItemWrapper>
                                <S.ItemWrapper>
                                    <img src={SkullIcon} alt="Skull Icon" />
                                    <p>MORTES</p>
                                    <span>{item.deaths}</span>
                                </S.ItemWrapper>
                            </S.ContainerContent>
                        </S.AccordionContent>
                    </S.AccordionItem>
                )) : <S.NotData>SEM DADOS...</S.NotData>}
            </S.AccordionContainer>
        </S.Accordion>
    );
}

export default memo(Accordion);
