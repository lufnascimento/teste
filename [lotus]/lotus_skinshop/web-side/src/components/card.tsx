import { ModelProps, useNui } from '@/hooks/useNui'
import ArrowLeft from '../assets/arrowL.svg'
import ArrowRight from '../assets/arrowR.svg'
import { emit } from '@/utils/emit'

export default function Card({ model, name, texture }: ModelProps) {
  const { setCustoms, customs } = useNui()

  const handleNextModel = () => {
    if (model.value === model.max) return
    customs.map((custom: ModelProps, index: number) => {
      if (custom.name === name) {
        const updatedModel = {
          ...custom.model,
          value: custom.model.value + 1,
        }
        emit('UPDATE_CUSTOM', {
          custom: { ...custom, model: updatedModel },
          index: index + 1,
        })
        return {
          ...custom,
          model: updatedModel,
        }
      }
      return custom
    })
  }

  const handlePrevModel = () => {
    if (model.value === 0) return
    customs.map((custom: ModelProps, index: number) => {
      if (custom.name === name) {
        const updatedModel = {
          ...custom.model,
          value: custom.model.value - 1,
        }
        emit('UPDATE_CUSTOM', {
          custom: { ...custom, model: updatedModel },
          index: index + 1,
        })
        return {
          ...custom,
          model: updatedModel,
        }
      }
      return custom
    })
  }

  const handleNextTexture = () => {
    if (texture.value === texture.max) return
    customs.map((custom: ModelProps, index: number) => {
      if (custom.name === name) {
        const updatedTexture = {
          ...custom.texture,
          value: custom.texture.value + 1,
        }
        emit('UPDATE_CUSTOM', {
          custom: { ...custom, texture: updatedTexture },
          index: index + 1,
        })
        return {
          ...custom,
          texture: updatedTexture,
        }
      }
      return custom
    })
  }

  const handleChangeModel = (value: number) => {
    customs.map((custom: ModelProps, index: number) => {
      if (custom.name === name) {
        const updatedModel = {
          ...custom.model,
          value,
        }
        emit('UPDATE_CUSTOM', {
          custom: { ...custom, model: updatedModel },
          index: index + 1,
        })
        return {
          ...custom,
          model: updatedModel,
        }
      }
      return custom
    })
  }

  const handleChangeTexture = (value: number) => {
    customs.map((custom: ModelProps, index: number) => {
      if (custom.name === name) {
        const updatedTexture = {
          ...custom.texture,
          value,
        }
        emit('UPDATE_CUSTOM', {
          custom: { ...custom, texture: updatedTexture },
          index: index + 1,
        })
        return {
          ...custom,
          texture: updatedTexture,
        }
      }
      return custom
    })
  }

  const handlePrevTexture = () => {
    if (texture.value === 0) return
    customs.map((custom: ModelProps, index: number) => {
      if (custom.name === name) {
        const updatedTexture = {
          ...custom.texture,
          value: custom.texture.value - 1,
        }
        emit('UPDATE_CUSTOM', {
          custom: { ...custom, texture: updatedTexture },
          index: index + 1,
        })
        return {
          ...custom,
          texture: updatedTexture,
        }
      }
    })
  }

  return (
    <div className="flex gap-2.5">
      <div className="w-[9.5rem] space-y-1.5">
        <div className="flex gap-1.5 items-center">
          <span className="text-[0.6875rem] text-white/90 uppercase">
            {name}
          </span>
          <hr className="border-none flex flex-1 h-[0.0625rem] w- bg-gradient-to-r from-white/15 to-white/0" />
        </div>
        <div className='"w-full h-[2.5rem] bg-gradient-to-r from-white/15 to-white/10 rounded border border-white/15 px-2 py-1.5 flex items-center'>
          <div
            onClick={handlePrevModel}
            className="w-[1.5625rem] h-[1.875rem] hexagon bg-white/10 relative hover:gradient cursor-pointer"
          >
            <img
              className="w-3.5 absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2"
              src={ArrowLeft}
              alt=""
            />
          </div>
          <div className="flex items-center w-[5rem] pl-2">
            <input
              min={0}
              max={model.max}
              type="number"
              onInput={(e) => handleChangeModel(Number(e.currentTarget.value))}
              placeholder="1"
              value={model.value}
              className="!w-6 bg-transparent outline-none text-white/60 text-xs text-right mr-[-.6rem]"
            />
            <p className="text-white/60 text-xs text-center mx-3">
              /{model.max}
            </p>
          </div>
          <div
            onClick={handleNextModel}
            className="w-[1.5625rem] h-[1.875rem] hexagon bg-white/10 relative hover:gradient cursor-pointer"
          >
            <img
              className="w-3.5 absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2"
              src={ArrowRight}
              alt=""
            />
          </div>
        </div>
      </div>
      <div className="w-[9.5rem] space-y-1.5">
        <div className="flex gap-1.5 items-center">
          <span className="text-[0.6875rem] text-white/90 uppercase">
            Textura
          </span>
          <hr className="border-none flex flex-1 h-[0.0625rem] w- bg-gradient-to-r from-white/15 to-white/0" />
        </div>
        <div className='"w-full h-[2.5rem] bg-gradient-to-r from-white/15 to-white/10 rounded border border-white/15 px-2 py-1.5 flex items-center'>
          <div
            onClick={handlePrevTexture}
            className="w-[1.5625rem] h-[1.875rem] hexagon bg-white/10 relative hover:gradient cursor-pointer"
          >
            <img
              className="w-3.5 absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2"
              src={ArrowLeft}
              alt=""
            />
          </div>
          <div className="flex items-center w-[5rem] pl-2">
            <input
              min={0}
              max={texture.max}
              type="number"
              onInput={(e) =>
                handleChangeTexture(Number(e.currentTarget.value))
              }
              placeholder="1"
              value={texture.value}
              className="!w-6 bg-transparent outline-none text-white/60 text-xs text-right mr-[-.6rem]"
            />
            <p className="text-white/60 text-xs text-center mx-3">
              /{texture.max}
            </p>
          </div>
          <div
            onClick={handleNextTexture}
            className="w-[1.5625rem] h-[1.875rem] hexagon bg-white/10 relative hover:gradient cursor-pointer"
          >
            <img
              className="w-3.5 absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2"
              src={ArrowRight}
              alt=""
            />
          </div>
        </div>
      </div>
    </div>
  )
}
