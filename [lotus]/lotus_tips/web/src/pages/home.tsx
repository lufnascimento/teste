import Card from '@/components/card'
import Header from '@/components/header'
import Sidebar from '@/components/sidebar'
import { ICard, useNui } from '@/store/useNui'
import { emit } from '@/utils/emit'
import { MessageSquareText } from 'lucide-react'
import { useEffect, useState } from 'react'
import { motion } from 'framer-motion'
import Modal from '@/components/modal'

export default function Home() {
  const { cards, setCards, category } = useNui()
  const [modal, setModal] = useState(false)
  const [callType, setCallType] = useState<
    'staff' | 'medic' | 'mechanic' | 'police'
  >('staff')

  function handleModal(type: 'staff' | 'medic' | 'mechanic' | 'police') {
    setModal(!modal)
    setCallType(type)
  }

  useEffect(() => {
    emit<ICard[]>('GET_TIPS', {}, [
      {
        title: 'Dica #1',
        description: 'Como iniciar no servidor',
        image:
          'https://media.discordapp.net/attachments/1220085581128925306/1313197481647013910/image.png?ex=674f41f5&is=674df075&hm=162c0c3d107b244da0244b8bbba374476d31106b54cf6a307afddd4814d01154&=&format=webp&quality=lossless&width=495&height=495',
        link: 'https://www.youtube.com/embed/HC-L4ukqt1w?si=uby-5-lWZgbEypvf',
        category: 'tips',
      },
      {
        title: 'Bug #1',
        description: 'Problema com login',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #2',
        description: 'Comandos básicos',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #2',
        description: 'Erro de conexão',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #3',
        description: 'Como ganhar dinheiro',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #3',
        description: 'Problema com inventário',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #4',
        description: 'Empregos disponíveis',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #4',
        description: 'Erro ao comprar itens',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #5',
        description: 'Sistema de casas',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #5',
        description: 'Problema com veículos',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #6',
        description: 'Mecânicas do jogo',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #6',
        description: 'Erro de spawn',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #7',
        description: 'Sistema de facções',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #7',
        description: 'Problema com chat',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #8',
        description: 'Eventos especiais',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #8',
        description: 'Erro de animação',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #9',
        description: 'Sistema de crafting',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #9',
        description: 'Problema com áudio',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #10',
        description: 'Economia do servidor',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #10',
        description: 'Erro de interface',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #11',
        description: 'Sistema de pets',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #11',
        description: 'Problema com missões',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #12',
        description: 'Customização',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #12',
        description: 'Erro de salvamento',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #13',
        description: 'Sistema de pesca',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #13',
        description: 'Problema com skills',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #14',
        description: 'Ranking do servidor',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #14',
        description: 'Erro de renderização',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
      {
        title: 'Dica #15',
        description: 'Sistema VIP',
        image: '',
        link: 'https://google.com',
        category: 'tips',
      },
      {
        title: 'Bug #15',
        description: 'Problema com pagamentos',
        image: '',
        link: 'https://google.com',
        category: 'commonBugs',
      },
    ]).then(setCards)
  }, [])

  return (
    <>
      <motion.div
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ duration: 0.5, ease: 'easeOut' }}
        className="w-[89rem] h-[51rem] bg-black/70 rounded p-5 space-y-4"
      >
        <Header />
        <div className="flex">
          <Sidebar />
          <motion.div
            initial={{ opacity: 0 }}
            animate={{ x: 0, opacity: 1 }}
            transition={{ delay: 0.2 }}
            className="ml-5"
          >
            <div className="grid grid-cols-4 h-[36.25rem]  gap-2.5 flex-wrap overflow-y-auto overflow-x-hidden w-[67.87rem]">
              {cards
                .filter((card) => card.category === category)
                .map((card, index) => (
                  <motion.div
                    key={card.title}
                    initial={{ opacity: 0 }}
                    animate={{ opacity: 1 }}
                    transition={{ delay: index * 0.1 }}
                  >
                    <Card {...card} />
                  </motion.div>
                ))}
            </div>
            <motion.div
              initial={{ y: 20, opacity: 0 }}
              animate={{ y: 0, opacity: 1 }}
              transition={{ delay: 0.4 }}
              className="mt-5 w-full"
            >
              <hr className="w-full border-none h-[0.0625rem] bg-white/10" />
              <div className="flex flex-col items-center w-full justify-center mt-4">
                <motion.h6
                  initial={{ y: 10, opacity: 0 }}
                  animate={{ y: 0, opacity: 1 }}
                  transition={{ delay: 0.5 }}
                  className="text-xl text-white font-bold"
                >
                  NÃO ENCONTROU O QUE PRECISAVA?
                </motion.h6>
                <div className="flex items-center gap-2 mt-4">
                  {['STAFF', 'MÉDICO', 'MECÂNICO', 'POLICIA'].map(
                    (text, index) => (
                      <motion.button
                        key={text}
                        onClick={() =>
                          handleModal(
                            text.toLowerCase() as
                              | 'staff'
                              | 'medic'
                              | 'mechanic'
                              | 'police',
                          )
                        }
                        initial={{ scale: 0, opacity: 0 }}
                        animate={{ scale: 1, opacity: 1 }}
                        transition={{
                          delay: 0.6 + index * 0.1,
                          duration: 0.4,
                          ease: 'easeOut',
                        }}
                        whileHover={{
                          scale: 1.05,
                          transition: {
                            duration: 0.2,
                            ease: 'easeInOut',
                          },
                        }}
                        whileTap={{
                          scale: 0.95,
                          transition: {
                            duration: 0.1,
                          },
                        }}
                        className="flex items-center gap-2 h-10 w-[8.75rem] bg-white/5 rounded justify-center hover:bg-gradient-to-r from-[#1E90F3] to-[#1871BF] hover:shadow-[0px_0px_17px_0px_#1E90F3]"
                      >
                        <MessageSquareText className="size-5 text-white" />
                        <p className="text-white font-bold uppercase text-sm">
                          {text}
                        </p>
                      </motion.button>
                    ),
                  )}
                </div>
              </div>
            </motion.div>
          </motion.div>
        </div>
      </motion.div>
      {modal && <Modal setModal={setModal} type={callType} />}
    </>
  )
}
