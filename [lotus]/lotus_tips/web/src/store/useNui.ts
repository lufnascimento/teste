import { create } from 'zustand'

export const categories = {
  tips: 'Dicas Iniciais',
  howToStart: 'Como começar',
  earnMoney: 'GANHE DINHEIRO',
  factions: 'Facções',
  commonBugs: 'Bugs comuns',
  updates: 'Atualizações',
}

export interface ICard {
  title: string
  description: string
  image: string
  category: ICategory
  link: string
}

export type ICategory = keyof typeof categories

interface NuiState {
  category: ICategory
  setCategory: (category: ICategory) => void
  cards: ICard[]
  setCards: (cards: ICard[]) => void
}

export const useNui = create<NuiState>((set) => ({
  category: Object.keys(categories)[0] as keyof typeof categories,
  setCategory: (category) => set({ category }),
  cards: [],
  setCards: (cards) => set({ cards }),
}))
