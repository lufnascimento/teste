import { ICard } from '@/store/useNui'
import { useState } from 'react'

export default function Card({ title, description, image, link }: ICard) {
  const [showVideo, setShowVideo] = useState(false)

  return (
    <div className="size-64 rounded bg-white/10 border border-white/10 p-1">
      <img
        src={image}
        className="w-full h-[9.375rem] rounded bg-zinc-900"
        alt=""
      />
      <div className="flex items-center gap-2 h-[3rem]">
        <img className="mt-3" src="" alt="" />
        <div className="mt-4">
          <p className="uppercase leading-[1rem] text-white font-bold">
            {title}
          </p>
          <p className="text-xs text-white/70">{description}</p>
        </div>
      </div>
      <button
        onClick={() => setShowVideo(true)}
        className="h-[2.25rem] flex-none w-full bg-white/10 border border-white/10 rounded text-white/70 font-bold uppercase mt-2 hover:text-white hover:bg-gradient-to-r from-[#1E90F3] to-[#1871BF] hover:shadow-[0px_0px_17px_0px_#1871BF]"
      >
        Acessar
      </button>
      {showVideo && (
        <div className="fixed inset-0 left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 w-screen h-screen bg-black/80 flex items-center justify-center z-50">
          <div className="relative w-[90vw] h-[90vh] flex items-center justify-center">
            <button
              onClick={() => setShowVideo(false)}
              className="absolute -top-8 right-0 text-white hover:text-[#1E90F3]"
            >
              Fechar
            </button>
            <iframe
              className="absolute"
              width="50%"
              height="50%"
              src={link}
              title={title}
              frameBorder="0"
              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
              allowFullScreen
            />
          </div>
        </div>
      )}
    </div>
  )
}
