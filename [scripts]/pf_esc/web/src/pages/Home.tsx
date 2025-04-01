import { useNavigate } from "react-router-dom"
import { motion } from "motion/react";

import { useVisibility } from "../providers/VisibilityProvider"
import { fetchNui } from "../utils/fetchNui"
import Nav from "../components/Nav"
import { Header } from "../components/header"
import { Background } from "../components/background"
import BannerShop from "/banners/shop.png"
import BannerBet from "/banners/bet.png"
import BannerSkins from "/banners/skins.png"
import BannerRanking from "/banners/ranking.png"
import BannerCases from "/banners/cases.png"
import BannerPass from "/banners/pass.png"
import Vip from "../assets/vip.gif"

import DefaultAvatar from "../assets/default_avatar.svg"

export default function Home() {
  const navigate = useNavigate();
  const { data } = useVisibility();

  function handleOpenSkins() {
    fetchNui("OpenSkins", {}, true);
  }

  function handleOpenPass() {
    fetchNui("OpenPass", {}, true);
  }

  function handleOpenBet() {
    fetchNui("OpenBet", {}, true);
  }

  function handleOpenVips() {
    fetchNui("OpenVips", {}, true);
  }

  function handleOpenCases() {
    fetchNui("OpenCases", {}, true);
  }

  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: {
        staggerChildren: 0.1
      }
    }
  };

  const itemVariants = {
    hidden: { opacity: 0, y: 20 },
    visible: {
      opacity: 1,
      y: 0,
      transition: {
        duration: 0.5
      }
    }
  };

  const buttonVariants = {
    hover: {
      scale: 1.05,
      transition: {
        duration: 0.2
      }
    },
    tap: {
      scale: 0.95
    }
  };

  return (
    <motion.div 
      className="w-[80.8125rem] h-[52.125rem] absolute left-1/2 -translate-x-1/2 top-1/2 -translate-y-1/2 flex flex-col gap-3"
      initial="hidden"
      animate="visible"
      variants={containerVariants}
    >
      <Header />
      <div className="w-full h-full flex gap-3">
        <div className="h-full grid grid-components gap-3">
          <motion.div 
            className="relative [grid-area:profile] w-full h-full flex items-center justify-between gap-3 px-3 overflow-hidden"
            variants={itemVariants}
          >
            <Background />
            <div className="w-[14.125rem] flex items-center gap-3">
              <img src={data?.avatar || DefaultAvatar} onError={(e) => e.currentTarget.src = DefaultAvatar} alt="Avatar" className="w-[4.5rem] h-[4.5rem] rounded-full border-[0.8px] border-primary flex-none" />
              <div className="flex flex-col gap-1">
                <span className="text-white text-[1.125rem] font-bold leading-[1] line-clamp-1">{data?.name}</span>
                <span className="text-white/[.5] text-[1rem] leading-[1] text-primary">{data?.id}</span>
              </div>
            </div>
            <div className="w-full flex-1 flex items-center justify-between">
              <div className="flex items-center gap-2 flex-none">
                <svg className="size-8" width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M16 3.25C13.4783 3.25 11.0132 3.99777 8.91648 5.39876C6.81976 6.79975 5.18556 8.79103 4.22054 11.1208C3.25552 13.4505 3.00303 16.0141 3.49499 18.4874C3.98696 20.9607 5.20127 23.2325 6.98439 25.0156C8.76751 26.7987 11.0393 28.0131 13.5126 28.505C15.9859 28.997 18.5495 28.7445 20.8792 27.7795C23.209 26.8144 25.2003 25.1802 26.6012 23.0835C28.0022 20.9868 28.75 18.5217 28.75 16C28.746 12.6197 27.4015 9.379 25.0112 6.98877C22.621 4.59854 19.3803 3.25397 16 3.25ZM8.93001 24.75C9.66349 23.5303 10.7 22.5212 11.9389 21.8206C13.1777 21.12 14.5768 20.7518 16 20.7518C17.4232 20.7518 18.8223 21.12 20.0611 21.8206C21.3 22.5212 22.3365 23.5303 23.07 24.75C21.0705 26.3714 18.5743 27.2563 16 27.2563C13.4257 27.2563 10.9296 26.3714 8.93001 24.75ZM11.75 15C11.75 14.1594 11.9993 13.3377 12.4663 12.6388C12.9333 11.9399 13.597 11.3952 14.3736 11.0735C15.1502 10.7518 16.0047 10.6677 16.8291 10.8317C17.6536 10.9956 18.4108 11.4004 19.0052 11.9948C19.5996 12.5892 20.0044 13.3464 20.1683 14.1709C20.3323 14.9953 20.2482 15.8498 19.9265 16.6264C19.6048 17.403 19.0601 18.0668 18.3612 18.5337C17.6623 19.0007 16.8406 19.25 16 19.25C14.8728 19.25 13.7918 18.8022 12.9948 18.0052C12.1978 17.2082 11.75 16.1272 11.75 15ZM24.1888 23.705C23.0103 21.8727 21.2489 20.4908 19.1888 19.7825C20.216 19.0983 20.9959 18.1016 21.413 16.9399C21.8301 15.7783 21.8623 14.5132 21.5049 13.3318C21.1475 12.1504 20.4194 11.1153 19.4282 10.3797C18.4371 9.64404 17.2356 9.24686 16.0013 9.24686C14.767 9.24686 13.5654 9.64404 12.5743 10.3797C11.5832 11.1153 10.8551 12.1504 10.4976 13.3318C10.1402 14.5132 10.1724 15.7783 10.5895 16.9399C11.0066 18.1016 11.7865 19.0983 12.8138 19.7825C10.7536 20.4908 8.99217 21.8727 7.81376 23.705C6.30729 22.1064 5.30179 20.1017 4.92131 17.9382C4.54082 15.7748 4.80201 13.5474 5.67264 11.5307C6.54327 9.51396 7.98524 7.79624 9.82066 6.58946C11.6561 5.38267 13.8046 4.7396 16.0013 4.7396C18.1979 4.7396 20.3464 5.38267 22.1818 6.58946C24.0173 7.79624 25.4592 9.51396 26.3299 11.5307C27.2005 13.5474 27.4617 15.7748 27.0812 17.9382C26.7007 20.1017 25.6952 22.1064 24.1888 23.705Z" fill="#1E90F3" />
                </svg>
                <div className="flex flex-col ">
                  <span className="text-xs leading-[1] text-white/60">IDADE</span>
                  <p className="text-white font-bold text-[.9375rem]">{data?.age} ANOS</p>
                </div>
              </div>
              <div className="flex items-center gap-2 flex-none">
                <svg className="size-8" width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M27.6988 20.0375L21.7938 17.3913C21.5262 17.2766 21.2343 17.2305 20.9444 17.2572C20.6546 17.2838 20.3759 17.3823 20.1338 17.5438C20.1092 17.5595 20.0858 17.5771 20.0638 17.5963L16.9775 20.2213C16.9455 20.2387 16.9098 20.2485 16.8734 20.2498C16.837 20.2511 16.8007 20.2439 16.7675 20.2288C14.7838 19.2713 12.7288 17.2288 11.7675 15.2725C11.7515 15.2398 11.7432 15.2039 11.7432 15.1675C11.7432 15.1311 11.7515 15.0952 11.7675 15.0625L14.4013 11.9375C14.4202 11.9144 14.4377 11.8902 14.4538 11.865C14.613 11.6219 14.7092 11.3429 14.7336 11.0533C14.7581 10.7638 14.71 10.4726 14.5938 10.2063L11.9663 4.31126C11.8171 3.96327 11.559 3.67306 11.2308 3.48419C10.9027 3.29532 10.5221 3.21797 10.1463 3.26376C8.5128 3.47851 7.01341 4.28068 5.92829 5.52039C4.84318 6.76009 4.24659 8.35249 4.25001 10C4.25001 19.7875 12.2125 27.75 22 27.75C23.6475 27.7532 25.2397 27.1565 26.4794 26.0714C27.719 24.9864 28.5213 23.4871 28.7363 21.8538C28.782 21.4797 28.7057 21.1008 28.5187 20.7736C28.3318 20.4463 28.0442 20.1882 27.6988 20.0375ZM22 26.25C13.04 26.25 5.75001 18.96 5.75001 10C5.74584 8.71742 6.20877 7.47719 7.05232 6.51102C7.89587 5.54486 9.06233 4.91887 10.3338 4.75001H10.3625C10.4129 4.75095 10.4618 4.76709 10.5028 4.79631C10.5439 4.82553 10.5751 4.86647 10.5925 4.91376L13.23 10.8025C13.2451 10.8353 13.2528 10.8709 13.2528 10.9069C13.2528 10.9429 13.2451 10.9785 13.23 11.0113L10.5913 14.1438C10.5716 14.1661 10.5536 14.1899 10.5375 14.215C10.3724 14.4671 10.2752 14.7575 10.2552 15.0582C10.2353 15.3589 10.2934 15.6596 10.4238 15.9313C11.5325 18.2013 13.82 20.4713 16.115 21.58C16.3883 21.7097 16.6905 21.7663 16.9921 21.7444C17.2938 21.7225 17.5846 21.6228 17.8363 21.455C17.86 21.4388 17.8838 21.4213 17.9063 21.4025L20.9913 18.7775C21.0217 18.7611 21.0554 18.7515 21.0899 18.7494C21.1244 18.7472 21.159 18.7526 21.1913 18.765L27.0975 21.4113C27.1458 21.4318 27.1863 21.467 27.2135 21.5119C27.2406 21.5567 27.253 21.609 27.2488 21.6613C27.0808 22.9333 26.4554 24.1006 25.4894 24.9451C24.5235 25.7896 23.2831 26.2535 22 26.25Z" fill="#1E90F3" />
                </svg>

                <div className="flex flex-col ">
                  <span className="text-xs leading-[1] text-white/60">TELEFONE</span>
                  <p className="text-white font-bold text-[.9375rem]">{data?.phone}</p>
                </div>
              </div>
              <div className="flex items-center gap-2 flex-none">
                <svg className="size-8" width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M26.3529 10.6327H21.4118V10.398C21.4118 8.96633 20.8416 7.59334 19.8267 6.58103C18.8118 5.56871 17.4353 5 16 5C14.5647 5 13.1882 5.56871 12.1733 6.58103C11.1584 7.59334 10.5882 8.96633 10.5882 10.398V10.6327H5.64706C5.21023 10.6327 4.7913 10.8057 4.48241 11.1138C4.17353 11.4219 4 11.8398 4 12.2755V26.3571C4 26.7929 4.17353 27.2107 4.48241 27.5188C4.7913 27.8269 5.21023 28 5.64706 28H26.3529C26.7898 28 27.2087 27.8269 27.5176 27.5188C27.8265 27.2107 28 26.7929 28 26.3571V12.2755C28 11.8398 27.8265 11.4219 27.5176 11.1138C27.2087 10.8057 26.7898 10.6327 26.3529 10.6327ZM12 10.398C12 9.3398 12.4214 8.32498 13.1716 7.57675C13.9217 6.82852 14.9391 6.40816 16 6.40816C17.0609 6.40816 18.0783 6.82852 18.8284 7.57675C19.5786 8.32498 20 9.3398 20 10.398V10.6327H12V10.398ZM26.5882 26.3571C26.5882 26.4194 26.5634 26.4791 26.5193 26.5231C26.4752 26.5671 26.4153 26.5918 26.3529 26.5918H5.64706C5.58465 26.5918 5.52481 26.5671 5.48068 26.5231C5.43655 26.4791 5.41176 26.4194 5.41176 26.3571V12.2755C5.41176 12.2133 5.43655 12.1536 5.48068 12.1096C5.52481 12.0655 5.58465 12.0408 5.64706 12.0408H26.3529C26.4153 12.0408 26.4752 12.0655 26.5193 12.1096C26.5634 12.1536 26.5882 12.2133 26.5882 12.2755V26.3571Z" fill="#1E90F3" />
                </svg>

                <div className="flex flex-col ">
                  <span className="text-xs leading-[1] text-white/60">ORG</span>
                  <p className="text-white font-bold text-[.9375rem]">{data?.org}</p>
                </div>
              </div>
              <div className="flex items-center gap-2 flex-none">
                <svg className="size-8" width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M26.3529 10.6327H21.4118V10.398C21.4118 8.96633 20.8416 7.59334 19.8267 6.58103C18.8118 5.56871 17.4353 5 16 5C14.5647 5 13.1882 5.56871 12.1733 6.58103C11.1584 7.59334 10.5882 8.96633 10.5882 10.398V10.6327H5.64706C5.21023 10.6327 4.7913 10.8057 4.48241 11.1138C4.17353 11.4219 4 11.8398 4 12.2755V26.3571C4 26.7929 4.17353 27.2107 4.48241 27.5188C4.7913 27.8269 5.21023 28 5.64706 28H26.3529C26.7898 28 27.2087 27.8269 27.5176 27.5188C27.8265 27.2107 28 26.7929 28 26.3571V12.2755C28 11.8398 27.8265 11.4219 27.5176 11.1138C27.2087 10.8057 26.7898 10.6327 26.3529 10.6327ZM12 10.398C12 9.3398 12.4214 8.32498 13.1716 7.57675C13.9217 6.82852 14.9391 6.40816 16 6.40816C17.0609 6.40816 18.0783 6.82852 18.8284 7.57675C19.5786 8.32498 20 9.3398 20 10.398V10.6327H12V10.398ZM26.5882 26.3571C26.5882 26.4194 26.5634 26.4791 26.5193 26.5231C26.4752 26.5671 26.4153 26.5918 26.3529 26.5918H5.64706C5.58465 26.5918 5.52481 26.5671 5.48068 26.5231C5.43655 26.4791 5.41176 26.4194 5.41176 26.3571V12.2755C5.41176 12.2133 5.43655 12.1536 5.48068 12.1096C5.52481 12.0655 5.58465 12.0408 5.64706 12.0408H26.3529C26.4153 12.0408 26.4752 12.0655 26.5193 12.1096C26.5634 12.1536 26.5882 12.2133 26.5882 12.2755V26.3571Z" fill="#1E90F3" />
                </svg>

                <div className="flex flex-col ">
                  <span className="text-xs leading-[1] text-white/60">STATUS</span>
                  <p className="text-white font-bold text-[.9375rem]">{data?.status}</p>
                </div>
              </div>
            </div>
          </motion.div>
          <motion.div 
            className="relative [grid-area:vips] w-full h-full p-5 flex flex-col gap-2 justify-between"
            variants={itemVariants}
          >
            <Background />
            <div className="flex flex-col gap-5 overflow-y-auto">
              { data?.vips.map((vip: string) => (
                <div className="flex items-center gap-2">
                  <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M27.6446 12.4574C27.4917 12.3189 27.3025 12.2307 27.1012 12.204C26.8998 12.1773 26.6954 12.2134 26.5138 12.3075L21.239 15.0371L16.8795 7.51647C16.788 7.3589 16.6589 7.22854 16.5046 7.13805C16.3503 7.04755 16.1761 7 15.9988 7C15.8216 7 15.6474 7.04755 15.4931 7.13805C15.3388 7.22854 15.2096 7.3589 15.1182 7.51647L10.7586 15.0371L5.48588 12.3086C5.30435 12.2145 5.10004 12.1783 4.89872 12.2047C4.69741 12.231 4.50812 12.3186 4.35473 12.4565C4.20135 12.5943 4.09074 12.7763 4.03687 12.9793C3.98299 13.1824 3.98827 13.3974 4.05202 13.5974L7.81464 25.5628C7.84298 25.6531 7.89052 25.7357 7.95375 25.8043C8.01698 25.873 8.09427 25.926 8.17992 25.9594C8.26556 25.9929 8.35735 26.0059 8.4485 25.9975C8.53965 25.9892 8.62782 25.9597 8.70648 25.9111C8.7136 25.9111 9.37358 25.5058 10.598 25.111C11.7278 24.7458 13.5796 24.311 15.9988 24.311C18.4181 24.311 20.2699 24.7458 21.4007 25.111C22.621 25.5058 23.2851 25.9069 23.2902 25.9101C23.3688 25.9588 23.457 25.9886 23.5482 25.9971C23.6394 26.0056 23.7313 25.9927 23.8171 25.9594C23.9028 25.926 23.9803 25.8731 24.0436 25.8044C24.107 25.7358 24.1546 25.6532 24.183 25.5628L27.9457 13.5995C28.0112 13.3997 28.0176 13.1841 27.964 12.9805C27.9103 12.7769 27.7991 12.5947 27.6446 12.4574ZM23.2424 24.4725C22.1238 23.9531 19.6425 23.0443 15.9988 23.0443C12.3552 23.0443 9.87391 23.9531 8.75529 24.4725L5.35368 13.6554L10.3722 16.252C10.6039 16.3705 10.8699 16.3948 11.118 16.3199C11.366 16.2451 11.5781 16.0767 11.7125 15.8477L15.9988 8.45906L20.2852 15.853C20.4196 16.0817 20.6315 16.25 20.8793 16.3248C21.1271 16.3996 21.3929 16.3755 21.6245 16.2573L26.644 13.6596L23.2424 24.4725Z" fill="#1E90F3" />
                  </svg>
                  <div className="flex flex-col gap-1">
                    <span className="text-xs leading-[1] text-white/60">VIP</span>
                    <p className="text-white font-bold text-[.9375rem] leading-[1]">{vip}</p>
                  </div>
                </div>
              )) }
            </div>
            <div className="flex flex-col items-center gap-2.5">
              <span className="text-[10px] text-white/80 leading-[1]">NÃO POSSUI VIP? FIQUE CALMO</span>
              <motion.button 
                className="w-full h-10 rounded-[.1875rem] bg-primary shadow shadow-primary text-white font-bold text-[.875rem] leading-[1]"
                variants={buttonVariants}
                whileHover="hover"
                whileTap="tap"
                onClick={handleOpenVips}
              >
                ADQUIRIR
              </motion.button>
            </div>
          </motion.div>
          <motion.div 
            className="relative [grid-area:shop] w-full h-full flex flex-col items-center pt-6"
            variants={itemVariants}
            whileHover={{ scale: 1.02 }}
            transition={{ duration: 0.2 }}
          >
            <Background />
            {/* <img src={BannerShop} alt="" /> */}
            <div className="flex flex-col items-center">
              <p className="text-white/60 text-sm font-normal">GARANTA SEU VIP</p>
              <p className="text-white text-4xl font-bold">LOJA</p>
            </div>
            <img src={Vip} className="w-full" />
            <div className="absolute bottom-6 left-1/2 -translate-x-1/2 w-[13.75rem] flex flex-col items-center gap-2.5">
              <span className="text-[10px] text-white/80 leading-[1]">VOCÊ SERÁ REDIRECIONADO AO SITE</span>
              <motion.button 
                className="w-full h-10 rounded-[.1875rem] bg-primary shadow shadow-primary text-white font-bold text-[.875rem] leading-[1]"
                variants={buttonVariants}
                whileHover="hover"
                whileTap="tap"
                onClick={handleOpenVips}
              >
                ADQUIRIR
              </motion.button>
            </div>
          </motion.div>
          <motion.div 
            className="relative [grid-area:bet] w-full h-full p-[1.5625rem] flex flex-col justify-between"
            variants={itemVariants}
            whileHover={{ scale: 1.02 }}
            transition={{ duration: 0.2 }}
          >
            <Background />
            <img src={BannerBet} alt="" className="absolute right-0 bottom-0" />
            <div className="flex flex-col">
              <span className="text-white font-bold text-[1.875rem] leading-[1]">LOTUS BET</span>
              <p className="text-white/80 text-[.6875rem] leading-[1]">QUE TAL GANHAR UMA GRANA EXTRA?</p>
            </div>
            <motion.button 
              className="z-20 w-[12.5rem] h-10 rounded-[.1875rem] bg-primary shadow shadow-primary text-white font-bold text-[.875rem] leading-[1] cursor-pointer"
              variants={buttonVariants}
              whileHover="hover"
              whileTap="tap"
              onClick={handleOpenBet}
            >
              ACESSAR
            </motion.button>
          </motion.div>
          <motion.div 
            className="relative [grid-area:skins] w-full h-full flex flex-col justify-center gap-5 p-[1.875rem]"
            variants={itemVariants}
            whileHover={{ scale: 1.02 }}
            transition={{ duration: 0.2 }}
          >
            <div className="flex flex-col w-[15.625rem]">
              <span className="text-white font-bold text-[1.875rem] leading-[1]">SKINS</span>
              <p className="text-white/80 text-[.6875rem] leading-[1]">A CADA 30 DIAS A ROTAÇAO DE ARMAS É ALTERADA.</p>
            </div>
            <motion.button 
              className="w-[13.125rem] h-10 button-skins"
              variants={buttonVariants}
              whileHover="hover"
              whileTap="tap"
              onClick={handleOpenSkins}
            >
              ACESSAR
            </motion.button>
            <img src={BannerSkins} alt="" className="absolute right-0 bottom-0 -z-10" />
          </motion.div>
          <motion.div 
            className="relative [grid-area:pass] w-full h-full"
            variants={itemVariants}
            whileHover={{ scale: 1.02 }}
            transition={{ duration: 0.2 }}
          >
            <img src={BannerPass} alt="" className="absolute right-0 bottom-0 -z-10" />
            <div className="absolute top-1/2 -translate-y-1/2 right-[1.875rem] w-[13.75rem] flex flex-col items-center gap-2.5">
              <span className="text-[10px] text-white/80 leading-[1]">VOCÊ SERÁ REDIRECIONADO AO SITE</span>
              <motion.button 
                className="w-full h-10 rounded-[.1875rem] text-white font-bold text-[.875rem] leading-[1] button-pass cursor-pointer"
                variants={buttonVariants}
                whileHover="hover"
                whileTap="tap"
                onClick={handleOpenPass}
              >
                ACESSAR
              </motion.button>
            </div>
          </motion.div>
        </div>
        <motion.div 
          className="w-[19.375rem] h-full flex flex-col gap-3"
          variants={containerVariants}
        >
          <motion.div 
            className="relative w-full h-[9.9375rem] p-[1.5625rem] flex flex-col justify-between"
            variants={itemVariants}
            whileHover={{ scale: 1.02 }}
            transition={{ duration: 0.2 }}
          >
            <Background />
            <img src={BannerRanking} alt="" className="absolute right-0 bottom-0 -z-10" />
            <div className="flex flex-col">
              <span className="text-white font-bold text-[1.875rem] leading-[1]">RANKING</span>
              <p className="text-white/80 text-[.6875rem] leading-[1]">VEJÁ OS MELHORES</p>
            </div>
            <motion.button 
              className="w-[12.5rem] h-10 rounded-[.1875rem] bg-primary shadow shadow-primary text-white font-bold text-[.875rem] leading-[1]"
              variants={buttonVariants}
              whileHover="hover"
              whileTap="tap"
              onClick={() => navigate('/rankings')}
            >
              ACESSAR
            </motion.button>
          </motion.div>
          <motion.div 
            className="relative w-full h-[35.6875rem] p-[1.5625rem] flex flex-col justify-between"
            variants={itemVariants}
            whileHover={{ scale: 1.02 }}
            transition={{ duration: 0.2 }}
          >
            <img src={BannerCases} alt="" className="absolute right-0 bottom-0 -z-10 w-full h-full" />
            <div className="absolute bottom-6 left-1/2 -translate-x-1/2 w-[13.75rem] flex flex-col items-center gap-2.5">
              <span className="text-[10px] text-white/80 leading-[1]">VOCÊ SERÁ REDIRECIONADO AO SITE</span>
              <motion.button 
                className="w-full h-10 rounded-[.1875rem] bg-gradient-to-b from-[#FE0004] to-[#920002] text-white font-bold text-[.875rem] leading-[1]"
                variants={buttonVariants}
                whileHover="hover"
                whileTap="tap"
                onClick={handleOpenCases}
              >
                ADQUIRIR
              </motion.button>
            </div>
          </motion.div>
        </motion.div>
      </div>
    </motion.div>
  );
}
