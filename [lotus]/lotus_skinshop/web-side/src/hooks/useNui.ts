import { create } from 'zustand'

export interface ModelProps {
  name: string
  category: 'Roupas' | 'Acessórios'
  model: {
    value: number
    max: number
  }
  texture: {
    value: number
    max: number
  }
}

interface NuiState {
  customs: ModelProps[]
  setCustoms: (customs: ModelProps[]) => void
}

export const useNui = create<NuiState>((set) => ({
  customs: [
    {
      name: 'JAQUETA',
      category: 'Roupas',
      model: {
        value: 0,
        max: 125,
      },
      texture: {
        value: 0,
        max: 125,
      },
    },
    {
      name: 'Chapeu',
      category: 'Acessórios',
      model: {
        value: 0,
        max: 125,
      },
      texture: {
        value: 0,
        max: 125,
      },
    },
    {
      name: 'CALÇA',
      category: 'Roupas',
      model: {
        value: 0,
        max: 125,
      },
      texture: {
        value: 0,
        max: 125,
      },
    },
    {
      name: 'CAMISA',
      category: 'Roupas',
      model: {
        value: 0,
        max: 125,
      },
      texture: {
        value: 0,
        max: 125,
      },
    },
    {
      name: 'SAPATOS',
      category: 'Roupas',
      model: {
        value: 0,
        max: 125,
      },
      texture: {
        value: 0,
        max: 125,
      },
    },
    {
      name: 'ÓCULOS',
      category: 'Acessórios',
      model: {
        value: 0,
        max: 125,
      },
      texture: {
        value: 0,
        max: 125,
      },
    },
    {
      name: 'LUVA',
      category: 'Acessórios',
      model: {
        value: 0,
        max: 125,
      },
      texture: {
        value: 0,
        max: 125,
      },
    },
    {
      name: 'CINTO',
      category: 'Acessórios',
      model: {
        value: 0,
        max: 125,
      },
      texture: {
        value: 0,
        max: 125,
      },
    },
    {
      name: 'MEIAS',
      category: 'Roupas',
      model: {
        value: 0,
        max: 125,
      },
      texture: {
        value: 0,
        max: 125,
      },
    },
    {
      name: 'RELOGIO',
      category: 'Acessórios',
      model: {
        value: 0,
        max: 125,
      },
      texture: {
        value: 0,
        max: 125,
      },
    },
    {
      name: 'ANEL',
      category: 'Acessórios',
      model: {
        value: 0,
        max: 125,
      },
      texture: {
        value: 0,
        max: 125,
      },
    },
    {
      name: 'BOLSA',
      category: 'Acessórios',
      model: {
        value: 0,
        max: 125,
      },
      texture: {
        value: 0,
        max: 125,
      },
    },
  ],
  setCustoms: (customs) => set({ customs }),
}))
