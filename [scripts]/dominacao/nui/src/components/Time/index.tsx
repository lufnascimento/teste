import { FC, useEffect, useState } from "react";
import * as S from "./styles";
import { usePanel } from "../../providers/PanelContext";

type TimeProps = {
    secondsAmountProp?: number
}

const Time: FC<TimeProps> = ({ secondsAmountProp = 60 }) => {
    const [secondsAmount, setSecondsAmount] = useState<number>(secondsAmountProp)
    const { data } = usePanel()

    useEffect(() => {
        if (data) setSecondsAmount(data.time)
    }, [data])

    useEffect(() => {
        setTimeout(() => {
            if (secondsAmount! >= 0) setSecondsAmount(state => state! - 1)
        }, 1000)
    }, [secondsAmount])

    const hours = Math.floor((secondsAmount % (24 * 60 * 60)) / (60 * 60))
    const minutes = Math.floor((secondsAmount % (60 * 60)) / 60)
    const seconds = Math.floor((secondsAmount % (24 * 60 * 60)) % 60)

    return (
        <S.Time>
            {hours}:{minutes}:{seconds}
        </S.Time>
    );
}

export default Time;