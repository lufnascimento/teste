import clsx from "clsx";
import { useData } from "../hooks/useData";
import { debugData } from "../utils/debugData";
import { useNuiEvent } from "../hooks/useNuiEvent";
import { useState } from "react";

interface TalkingProps {
  type?: 'append' | 'remove';
  name: string;
  uid: number;
}

debugData([
  {
    action: 'talking',
    data: {
      type: 'append',
      name: 'Naue',
      uid: 1
    }
  },
  {
    action: 'talking',
    data: {
      type: 'append',
      name: 'RIO KALASHINIKOV',
      uid: 1
    }
  },
])

export function Informations() {
  const { data } = useData();
  const [talking, setTalking] = useState<Omit<TalkingProps, 'type'>[]>([])


  useNuiEvent<TalkingProps>('talking', (data) => {
    if (data.type === 'append') {
      setTalking((prevState) => [data, ...prevState])
    } else {
      setTalking((prevState) => prevState.filter(({ uid }) => uid !== data.uid))
    }
    delete data.type
  })

  return (
    <div className="flex flex-col items-end relative overflow-visible">
      <div className="flex flex-col items-end fixed -translate-x-[77%] right-[19.25rem]">
        {talking.map(({ uid, name }) => (
          <span className="text-white font-medium text-xs flex items-center gap-1">
            [{uid}] - {name}
            <svg stroke="#70FF00" fill="#70FF00" stroke-width="0" version="1.2" baseProfile="tiny" viewBox="0 0 24 24" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 16c-2.206 0-4-1.795-4-4v-6c0-2.205 1.794-4 4-4s4 1.795 4 4v6c0 2.205-1.794 4-4 4zm0-12c-1.103 0-2 .896-2 2v6c0 1.104.897 2 2 2s2-.896 2-2v-6c0-1.104-.897-2-2-2zM19 12v-2c0-.553-.447-1-1-1s-1 .447-1 1v2c0 2.757-2.243 5-5 5s-5-2.243-5-5v-2c0-.553-.447-1-1-1s-1 .447-1 1v2c0 3.52 2.613 6.432 6 6.92v1.08h-3c-.553 0-1 .447-1 1s.447 1 1 1h8c.553 0 1-.447 1-1s-.447-1-1-1h-3v-1.08c3.387-.488 6-3.4 6-6.92z" />
            </svg>
          </span>
        ))}
      </div>
      <div className="flex items-center gap-[.4375rem]">
        <div className="flex items-center">
          <img src="./images/discord.png" alt="" />
          <div className="h-[1.875rem] px-[.9375rem] bg-gradient-to-r from-black/60 to-black/50 border border-white/10 rounded-tl-lg rounded-br-lg flex items-center gap-2 text-white text-xs font-bold">
            DISCORD.GG/CAPITALOFC
          </div>
        </div>
        <div className="flex items-center">
          <img src="./images/clock.png" alt="" />
          <div className="h-[1.875rem] px-2.5 bg-gradient-to-r from-black/60 to-black/50 border border-white/10 rounded-tl-lg rounded-br-lg flex items-center gap-2 text-white text-xs font-bold">
            {data.clock || '00:00'}
          </div>
        </div>
      </div>
      <div className="flex items-center gap-[.4375rem]">
        <div className="flex items-center">
          <img src="./images/mic.png" alt="" />
          <div className="h-[2.375rem] px-[.9375rem] bg-gradient-to-r from-black/60 to-black/50 border border-white/10 rounded-tl-lg rounded-br-lg flex items-center gap-2 text-white text-xs font-bold">
            <div className="flex flex-col gap-0.5 items-center">
              <div className={clsx('size-[.4375rem] bg-black/40 rounded-sm', {
                '!bg-[#1E90F3]': data.talking && data.volume >= 1,
                '!bg-white': !data.talking && data.volume >= 1
              })} />
              <div className={clsx('size-[.4375rem] bg-black/40 rounded-sm', {
                '!bg-[#1E90F3]': data.talking && data.volume >= 2,
                '!bg-white': !data.talking && data.volume >= 2
              })} />
              <div className={clsx('size-[.4375rem] bg-black/40 rounded-sm', {
                '!bg-[#1E90F3]': data.talking && data.volume >= 3,
                '!bg-white': !data.talking && data.volume >= 3
              })} />
            </div>
          </div>
        </div>
        {
          data.cupom && (
            <div className="flex items-center">
              <img src="./images/cupom.png" alt="" />
              <div className="h-[2.375rem] px-2.5 bg-gradient-to-r from-black/60 to-black/50 border border-white/10 rounded-tl-lg rounded-br-lg flex items-center gap-2 text-white text-xs font-bold">
                {data.cupom}
              </div>
            </div>
          )
        }
      </div>

    </div>
  )

}
