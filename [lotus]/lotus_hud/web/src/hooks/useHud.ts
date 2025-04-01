import { create } from 'zustand'


export interface IProps {
  hud: { velocimeter: number, stats: number}
  updateHud: (hud: { velocimeter: number, stats: number }) => void;
}


export const useHud = create<IProps>((set) => ({
  hud: {
    stats: 2,
    velocimeter: 1,
  },
  updateHud: (hud: { velocimeter: number, stats: number }) => set({ hud })
}))