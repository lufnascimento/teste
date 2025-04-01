export interface StoreProps {
  time: number
  makapoints: number
  package: {
    title: string,
    price: number,
    description: string,
  },
  items: Array<{ name: string, spawn: string, price: number, redeemed: boolean }>
}


export interface Item {
  name: string
  spawn: string
  price: number
  redeemed: boolean
  makapoints?: number
  items: any
  setData: any
  index: number
}

export interface RankingItem {
  name: string;
  value: string;
}

export interface RankingsProps {
  richs: RankingItem[];
  online: RankingItem[];
  famous: RankingItem[];
  factions: RankingItem[];
  setName?: (name: 'richs' | 'online' | 'famous') => void | any
  setModalIsOpen?: (isOpen: boolean) => void | any
}

export interface Data {
  id: number;
  age: number;
  org: string;
  name: string;
  avatar: string; 
  phone: string;
  status: string;
  vips: string[];
  rankings: RankingsProps;
  setName?: (name: 'richs' | 'online' | 'famous') => void | any
  setModalIsOpen?: (isOpen: boolean) => void | any
}