import { fetchNui } from '../utils/fetchNui'
import { RiDiscordLine } from "react-icons/ri";
import { PiCaretLeft, PiCrosshairSimple, PiInstagramLogo, PiTiktokLogo } from "react-icons/pi";

import { useNavigate } from 'react-router-dom';

interface INav {
  isRankings?: boolean
}

export default function Nav({ isRankings }: INav) {
  const navigate = useNavigate()

  function handleOpenAim() {
    fetchNui('OpenAim', {}, true)
  }

  function handleOpenBoost() {
    fetchNui('OpenBoost', {}, true)
  }

  return (
    <div className='border border-white/[.08] flex items-center justify-center relative w-[84rem] h-[3.625rem] rounded-lg bg-white/[.05]' style={{ background: 'linear-gradient(90deg, rgba(0, 0, 0, 0.60) 0%, rgba(0, 0, 0, 0.90) 100%)' }}>
      {isRankings && <PiCaretLeft size={32} className='absolute w-[6.3125rem] left-40 text-white cursor-pointer' onClick={() => navigate({ pathname: '/' })} />}
      <ul className='h-full flex items-center justify-center'>
        <li onClick={() => fetchNui('action', { action: 'home' })} className='text-white text-base font-normal px-[1.12rem] cursor-pointer hover:bg-primary py-4 border border-transparent hover:border-white/[.15]'>INÍCIO</li>
        <li onClick={() => fetchNui('action', { action: 'map' })} className='text-white text-base font-normal px-[1.12rem] cursor-pointer hover:bg-primary py-4 border border-transparent hover:border-white/[.15]'>MAPA</li>
        <li onClick={() => fetchNui('action', { action: 'settings' })} className='text-white text-base font-normal px-[1.12rem] cursor-pointer hover:bg-primary py-4 border border-transparent hover:border-white/[.15]'>CONFIGURAÇÕES</li>
        <li onClick={handleOpenAim} className='text-white text-base font-normal flex items-center gap-[.36rem] px-[1.12rem] cursor-pointer hover:bg-primary py-4 border border-transparent hover:border-white/[.15]'>
          <PiCrosshairSimple size={18} />
          MIRA
        </li>
        <li onClick={handleOpenBoost} className='text-white text-base font-normal flex items-center gap-[.36rem] px-[1.12rem] cursor-pointer hover:bg-primary py-4 border border-transparent hover:border-white/[.15]'>
          <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12.75 8.10378C12.75 7.84428 12.75 7.71453 12.789 7.59903C12.9022 7.26303 13.2015 7.13328 13.5015 6.99678C13.8375 6.84303 14.0055 6.76653 14.1727 6.75303C14.3617 6.73803 14.5515 6.77853 14.7135 6.86928C14.928 6.98928 15.078 7.21878 15.231 7.40478C15.9382 8.26428 16.2922 8.69403 16.4212 9.16728C16.5262 9.54978 16.5262 9.95028 16.4212 10.332C16.233 11.0235 15.6367 11.6025 15.195 12.1395C14.9692 12.4133 14.856 12.5505 14.7135 12.6308C14.5487 12.7222 14.3605 12.7626 14.1727 12.747C14.0055 12.7335 13.8375 12.657 13.5007 12.5033C13.2007 12.3668 12.9022 12.237 12.789 11.901C12.75 11.7855 12.75 11.6558 12.75 11.3963V8.10378ZM5.24999 8.10378C5.24999 7.77678 5.24099 7.48353 4.97699 7.25403C4.88099 7.17078 4.75349 7.11303 4.49924 6.99678C4.16249 6.84378 3.99449 6.76653 3.82724 6.75303C3.32699 6.71253 3.05774 7.05453 2.76974 7.40553C2.06174 8.26428 1.70774 8.69403 1.57799 9.16803C1.4736 9.54926 1.4736 9.95155 1.57799 10.3328C1.76699 11.0235 2.36399 11.6033 2.80499 12.1395C3.08324 12.477 3.34949 12.7853 3.82724 12.747C3.99449 12.7335 4.16249 12.657 4.49924 12.5033C4.75424 12.3878 4.88099 12.3293 4.97699 12.246C5.24099 12.0165 5.24999 11.7233 5.24999 11.397V8.10378Z" stroke="white" stroke-width="1.125" stroke-linecap="round" stroke-linejoin="round" />
            <path d="M3.75 6.75C3.75 4.2645 6.1005 2.25 9 2.25C11.8995 2.25 14.25 4.2645 14.25 6.75M14.25 12.75V13.35C14.25 14.6752 12.9075 15.75 11.25 15.75H9.75" stroke="white" stroke-width="1.125" stroke-linecap="round" stroke-linejoin="round" />
          </svg>

          AJUDA
        </li>
      </ul>
      <div className='flex items-center gap-6 absolute right-6'>
        <button onClick={() => (window as any).invokeNative('openUrl', 'https://www.instagram.com/lotus_capitalrj/')} >
          <PiInstagramLogo size={26} color='white' />
        </button>
        <button onClick={() => (window as any).invokeNative('openUrl', 'https://www.tiktok.com/@grouplotus')} >
          <PiTiktokLogo size={26} color='white' />
        </button>
        <button onClick={() => (window as any).invokeNative('openUrl', 'https://discord.gg/capitalofc')} >
          <RiDiscordLine size={26} color='white' />
        </button>
      </div>
    </div>
  )
}