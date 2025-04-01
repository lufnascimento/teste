import { Navigate, Route, Routes } from 'react-router-dom'
import Home from './pages/Home'
import { VisibilityProvider } from './providers/Visibility'
import clsx from 'clsx'
import { isEnvBrowser } from './utils/misc'

export default function App() {
  return (
    <VisibilityProvider>
      <div
        className={clsx('w-screen h-screen', {
          'bg-zinc-800': isEnvBrowser(),
        })}
      >
        <Routes>
          <Route path="/home" element={<Home />} />
          <Route path="*" element={<Navigate to="/home" />} />
        </Routes>
      </div>
    </VisibilityProvider>
  )
}
