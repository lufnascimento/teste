import clsx from "clsx";
import { isEnvBrowser } from "../utils/misc";

interface ContainerProps {
  children: React.ReactNode;
}

export function Container({ children }: ContainerProps) {
  return (
    <div
      className={clsx(
        "w-screen h-screen p-8 overflow-hidden relative select-none",
        isEnvBrowser() && "bg-zinc-900"
      )}
    >
      {children}
    </div>
  );
}
