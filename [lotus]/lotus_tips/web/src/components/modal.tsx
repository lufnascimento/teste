import { emit } from '@/utils/emit'
import { motion, AnimatePresence } from 'framer-motion'
import { useRef } from 'react'

export default function Modal({
  setModal,
  type,
}: {
  setModal: (value: boolean) => void
  type: 'staff' | 'medic' | 'mechanic' | 'police'
}) {
  const inputRef = useRef<HTMLTextAreaElement>(null)

  function handleConfirm() {
    if (inputRef.current?.value) {
      emit('CALL', { type, description: inputRef.current.value })
      inputRef.current.value = ''
      setModal(false)
    }
  }

  return (
    <AnimatePresence>
      <motion.div
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        exit={{ opacity: 0 }}
        transition={{ duration: 0.2 }}
        className="w-screen absolute left-0 top-0 h-screen bg-black/70 flex items-center justify-center"
      >
        <motion.div
          initial={{ scale: 0.9, opacity: 0 }}
          animate={{ scale: 1, opacity: 1 }}
          exit={{ scale: 0.9, opacity: 0 }}
          transition={{ duration: 0.3, ease: 'easeOut' }}
          className="w-[33rem] h-[18rem] bg-black/80 rounded p-7"
        >
          <p className="text-white font-bold">Descrição</p>
          <textarea
            ref={inputRef}
            name=""
            id=""
            placeholder="Conte com mais detalhes o chamado..."
            className="w-full h-[9.375rem] resize-none bg-white/5 rounded mt-2 p-3 text-white placeholder:text-white/50"
          ></textarea>
          <div className="flex items-center gap-2 mt-2 justify-end">
            <button
              onClick={() => setModal(false)}
              className="w-[8.75rem] h-9 bg-white/10 border-white/10 rounded text-white/70 font-bold uppercase"
            >
              CANCELAR
            </button>
            <button
              onClick={handleConfirm}
              className="w-[8.75rem] h-9 bg-gradient-to-r from-[#1E90F3] to-[#1871BF] rounded text-white font-bold uppercase shadow-[0px_0px_17px_0px_rgba(249,46,62,0.45)]"
            >
              CONFIRMAR
            </button>
          </div>
        </motion.div>
      </motion.div>
    </AnimatePresence>
  )
}
