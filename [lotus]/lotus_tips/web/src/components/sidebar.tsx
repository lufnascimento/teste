import { categories, ICategory, useNui } from '@/store/useNui'
import clsx from 'clsx'
import { Rocket } from 'lucide-react'
import { motion } from 'framer-motion'
import { useEffect, useState } from 'react'
import { emit } from '@/utils/emit'
import logo2 from '../assets/logo2.png'

interface IUser {
  name: string
  id: string
  avatar: string
}

export default function Sidebar() {
  const { category, setCategory } = useNui()
  const [identity, setIdentity] = useState<IUser>({
    name: '',
    id: '',
    avatar: '',
  })

  useEffect(() => {
    emit('GET_IDENTITY').then((data) => {
      setIdentity(data)
    })
  }, [])

  return (
    <motion.div
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ duration: 0.5 }}
      className="w-72 h-[44rem] px-8 flex flex-col items-center py-7 bg-white/10 border border-white/10 rounded"
    >
      <motion.div
        initial={{ scale: 0.8, opacity: 0 }}
        animate={{ scale: 1, opacity: 1 }}
        transition={{ delay: 0.2 }}
        className="flex flex-col items-center gap-5"
      >
        <motion.img
          whileHover={{ scale: 1.05 }}
          src={identity.avatar}
          onError={(e) => {
            e.currentTarget.src = logo2
          }}
          className="size-32 rounded-full border border-[#1E90F3] bg-zinc-900"
          alt=""
        />
        <motion.div
          initial={{ y: 10, opacity: 0 }}
          animate={{ y: 0, opacity: 1 }}
          transition={{ delay: 0.3 }}
          className="flex flex-col items-center"
        >
          <p className="text-xl text-white font-bold uppercase">
            {identity.name}
          </p>
          <span className="text-[#1E90F3] text-center">#{identity.id}</span>
        </motion.div>
      </motion.div>
      <div className="flex flex-col mt-7 gap-1">
        {Object.entries(categories).map(([key, value], index) => (
          <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{
              delay: 0.4 + index * 0.1,
              duration: 0.6,
              ease: 'easeOut',
            }}
            whileHover={{
              scale: 1.02,
              transition: { duration: 0.3, ease: 'easeInOut' },
            }}
            key={key}
            onClick={() => setCategory(key as ICategory)}
            className={clsx(
              'h-12 px-4 flex items-center gap-3 justify-center w-fit cursor-pointer hover:bg-gradient-to-r from-[#1E90F3] to-[#1871BF] rounded hover:shadow-[0px_0px_17px_0px_#1871BF]',
              category === key &&
                'bg-gradient-to-r from-[#1E90F3] to-[#1871BF] rounded shadow-[0px_0px_17px_0px_#1871BF]',
            )}
          >
            <Rocket className="size-4 text-white" />
            <p className="text-white font-bold uppercase">{value}</p>
          </motion.div>
        ))}
      </div>
      <motion.div
        initial={{ y: 20, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ delay: 0.8 }}
        className="mt-10 w-full"
      >
        <p className="uppercase text-center text-sm text-white/80">
          Acesse nosso discord
        </p>
        <motion.button
          onClick={() =>
            (window as any).invokeNative('openUrl', 'discord.gg/cidadealtarj')
          }
          whileHover={{ scale: 1.05 }}
          whileTap={{ scale: 0.95 }}
          className="flex items-center gap-2 h-10 bg-gradient-to-r from-[#1E90F3] to-[#1871BF] rounded shadow-[0px_0px_17px_0px_#1871BF] w-full justify-center mt-3"
        >
          <svg
            width="23"
            height="24"
            viewBox="0 0 23 24"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M18.4671 5.60792C17.1925 5.01375 15.8125 4.5825 14.375 4.33333C14.3624 4.33293 14.3499 4.3353 14.3383 4.34026C14.3267 4.34523 14.3163 4.35268 14.3079 4.36208C14.1354 4.67833 13.9342 5.09042 13.8 5.40667C12.2753 5.17667 10.7247 5.17667 9.20001 5.40667C9.06584 5.08083 8.86459 4.67833 8.68251 4.36208C8.67293 4.34292 8.64418 4.33333 8.61543 4.33333C7.17793 4.5825 5.80751 5.01375 4.52334 5.60792C4.51376 5.60792 4.50418 5.6175 4.49459 5.62708C1.88793 9.5275 1.16918 13.3225 1.52376 17.0792C1.52376 17.0983 1.53334 17.1175 1.55251 17.1271C3.27751 18.3921 4.93543 19.1588 6.57418 19.6667C6.60293 19.6763 6.63168 19.6667 6.64126 19.6475C7.02459 19.1204 7.36959 18.5646 7.66668 17.98C7.68584 17.9417 7.66668 17.9033 7.62834 17.8938C7.08209 17.6829 6.56459 17.4338 6.05668 17.1463C6.01834 17.1271 6.01834 17.0696 6.04709 17.0408C6.15251 16.9642 6.25793 16.8779 6.36334 16.8013C6.38251 16.7821 6.41126 16.7821 6.43043 16.7917C9.72709 18.2963 13.2825 18.2963 16.5408 16.7917C16.56 16.7821 16.5888 16.7821 16.6079 16.8013C16.7133 16.8875 16.8188 16.9642 16.9242 17.0504C16.9625 17.0792 16.9625 17.1367 16.9146 17.1558C16.4163 17.4529 15.8892 17.6925 15.3429 17.9033C15.3046 17.9129 15.295 17.9608 15.3046 17.9896C15.6113 18.5742 15.9563 19.13 16.33 19.6571C16.3588 19.6667 16.3875 19.6763 16.4163 19.6667C18.0646 19.1588 19.7225 18.3921 21.4475 17.1271C21.4667 17.1175 21.4763 17.0983 21.4763 17.0792C21.8979 12.7379 20.7767 8.97167 18.5054 5.62708C18.4958 5.6175 18.4863 5.60792 18.4671 5.60792ZM8.16501 14.7888C7.17793 14.7888 6.35376 13.8783 6.35376 12.7571C6.35376 11.6358 7.15876 10.7254 8.16501 10.7254C9.18084 10.7254 9.98584 11.6454 9.97626 12.7571C9.97626 13.8783 9.17126 14.7888 8.16501 14.7888ZM14.8446 14.7888C13.8575 14.7888 13.0333 13.8783 13.0333 12.7571C13.0333 11.6358 13.8383 10.7254 14.8446 10.7254C15.8604 10.7254 16.6654 11.6454 16.6558 12.7571C16.6558 13.8783 15.8604 14.7888 14.8446 14.7888Z"
              fill="white"
            />
          </svg>
          <p className="text-white font-bold uppercase">Discord</p>
        </motion.button>
      </motion.div>
    </motion.div>
  )
}
