import React, {
  Context,
  createContext,
  useContext,
  useEffect,
  useState,
} from 'react'
import { isEnvBrowser } from '../utils/misc'
import { observe } from '../hooks/observe'
import { emit } from '../utils/emit'
import { useNui } from '@/hooks/useNui'
import { test } from '@/utils/test'

interface VisibilityProviderValue {}

const VisibilityContext = createContext<VisibilityProviderValue | null>(null)

test([
  {
    action: 'open',
    data: {
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
    },
  },
])

export const VisibilityProvider: React.FC<{ children: React.ReactNode }> = ({
  children,
}) => {
  const [visible, setVisible] = useState(isEnvBrowser())
  const { setCustoms } = useNui()

  observe('open', (data) => {
    setVisible(true)
    setCustoms(data.customs)
  })

  observe('close', () => setVisible(false))

  useEffect(() => {
    if (!visible) return

    const keyHandler = (e: KeyboardEvent) => {
      if (e.key === 'Escape') {
        if (!isEnvBrowser()) emit('CLOSE')
        else setVisible(!visible)
      }
    }

    window.addEventListener('keydown', keyHandler)
    return () => window.removeEventListener('keydown', keyHandler)
  }, [visible])

  return (
    <VisibilityContext.Provider value={{}}>
      {visible && children}
    </VisibilityContext.Provider>
  )
}

export const useVisibility = () =>
  useContext<VisibilityProviderValue>(
    VisibilityContext as Context<VisibilityProviderValue>,
  )
