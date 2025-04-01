import { Header } from "../components/header";
import Nav from "../components/Nav";
import { useVisibility } from "../providers/VisibilityProvider";

import BannerOnline from '../assets/banner-online.png'
import BannerRichs from '../assets/banner-richs.png'
import BannerFactions from '../assets/banner-factions.png'

import Top1 from '../assets/top1.png'
import Top2 from '../assets/top2.png'
import Top3 from '../assets/top3.png'

export default function Rankings() {
  const { data } = useVisibility()

  return (
    <div className="w-[80.8125rem] h-[52.125rem] absolute left-1/2 -translate-x-1/2 top-1/2 -translate-y-1/2 flex flex-col gap-3">
      <div className="flex flex-col gap-4 max-[800px]:scale-[0.5] max-[1100px]:scale-[0.7] max-[1440px]:scale-[0.8] max-[1600px]:scale-[0.9] max-[1920px]:scale-[1]">
        <Header />
        <div className="flex items-center gap-[.94rem]">
          <div className="w-[27.3125rem] h-[46.875rem] bg-cover bg-no-repeat bg-center bg-online relative">
            <img src={BannerOnline} alt="" className="absolute right-0 bottom-0 -z-10" />
            <div className="flex flex-col gap-4 absolute left-1/2 -translate-x-1/2 top-80">
              {
                data?.rankings?.online.map((item: { name: string, value: string }, i: number) => {
                  if (i >= 5) return
                  return (
                    <div className="w-[21.4375rem] h-[3.25rem] bg-black/60 flex items-center justify-center relative rounded-[.3125rem]">
                      {i === 0 ? <img src={Top1} className='absolute left-[.69rem] w-[3rem]' /> : i === 1 ? <img src={Top2} className='absolute left-[.69rem] w-[3rem]' /> : i === 2 ? <img src={Top3} className='absolute left-[.69rem] w-[3rem]' /> : <span className="text-white text-base font-normal bg-white/[.08] rounded-[.25rem] w-[2.875rem] h-[1.875rem] flex items-center justify-center absolute left-[.69rem]">{i + 1}ª</span>}
                      <p className="text-white text-base font-normal">{item.name} - {item.value}</p>
                    </div>
                  )
                })
              }
            </div>
          </div>
          <div className="w-[27.3125rem] h-[46.875rem] bg-cover bg-no-repeat bg-center relative">
            <img src={BannerRichs} alt="" className="absolute right-0 bottom-0 -z-10" />
            <div className="flex flex-col gap-4 absolute left-1/2 -translate-x-1/2 top-80">
              {
                data?.rankings?.richs.map((item: { name: string, value: string }, i: number) => {
                  if (i >= 5) return
                  return (
                    <div className="w-[21.4375rem] h-[3.25rem] bg-black/60 flex items-center justify-center relative rounded-[.3125rem]">
                      {i === 0 ? <img src={Top1} className='absolute left-[.69rem] w-[3rem]' /> : i === 1 ? <img src={Top2} className='absolute left-[.69rem] w-[3rem]' /> : i === 2 ? <img src={Top3} className='absolute left-[.69rem] w-[3rem]' /> : <span className="text-white text-base font-normal bg-white/[.08] rounded-[.25rem] w-[2.875rem] h-[1.875rem] flex items-center justify-center absolute left-[.69rem]">{i + 1}ª</span>}
                      <p className="text-white text-base font-normal">{item.name} - {item.value}</p>
                    </div>
                  )
                })
              }
            </div>
          </div>
          <div className="w-[27.3125rem] h-[46.875rem] bg-cover bg-no-repeat bg-center bg-factions relative">
            <img src={BannerFactions} alt="" className="absolute right-0 bottom-0 -z-10" />
            <div className="flex flex-col gap-4 absolute left-1/2 -translate-x-1/2 top-80">
              {
                data?.rankings?.factions.map((item: { name: string, value: string }, i: number) => {
                  if (i >= 5) return
                  return (
                    <div className="w-[21.4375rem] h-[3.25rem] bg-black/60 flex items-center justify-center relative rounded-[.3125rem]">
                      {i === 0 ? <img src={Top1} className='absolute left-[.69rem] w-[3rem]' /> : i === 1 ? <img src={Top2} className='absolute left-[.69rem] w-[3rem]' /> : i === 2 ? <img src={Top3} className='absolute left-[.69rem] w-[3rem]' /> : <span className="text-white text-base font-normal bg-white/[.08] rounded-[.25rem] w-[2.875rem] h-[1.875rem] flex items-center justify-center absolute left-[.69rem]">{i + 1}ª</span>}
                      <p className="text-white text-base font-normal">{item.name} - {item.value}</p>
                    </div>
                  )
                })
              }
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}