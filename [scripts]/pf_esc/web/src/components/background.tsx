import { useRef } from "react";

export function Background() {
  const ref = useRef<SVGSVGElement>(null);

  return (
    <svg ref={ref} className="w-full h-full absolute left-0 top-0 -z-10 overflow-visible" width="100%" height="100%" viewBox={`0 0 ${ref.current?.width || 0} ${ref.current?.height || 0}`} fill="none">
      <rect className="w-full h-full" rx="4" fill="url(#paint0_linear_322_174)" fill-opacity="0.5" />
      <rect className="w-full h-full" rx="4" fill="url(#paint1_linear_322_174)" fill-opacity="0.25" />
      <rect className="w-[calc(100%-0.8px)] h-full" x="0.4" y="0.4" rx="3.6" stroke="url(#paint2_linear_322_174)" stroke-opacity="0.7" stroke-width="0.8" />
      <rect className="w-[calc(100%-0.8px)] h-full" x="0.4" y="0.4" rx="3.6" stroke="white" stroke-opacity="0.08" stroke-width="0.8" />
      <defs>
        <linearGradient id="paint0_linear_322_174" x1="0" y1="25" x2="1293" y2="25" gradientUnits="userSpaceOnUse">
          <stop />
          <stop offset="1" stopOpacity="0.85" />
        </linearGradient>
        <linearGradient id="paint1_linear_322_174" x1="646.5" y1="0" x2="646.5" y2="64.2857" gradientUnits="userSpaceOnUse">
          <stop stopColor="#1E90F3" stop-opacity="0" />
          <stop offset="1" stopColor="#1E90F3" />
        </linearGradient>
        <linearGradient id="paint2_linear_322_174" x1="646.5" y1="0" x2="646.5" y2="50" gradientUnits="userSpaceOnUse">
          <stop stopColor="#1E90F3" stop-opacity="0" />
          <stop offset="1" stopColor="#1E90F3" />
        </linearGradient>
      </defs>
    </svg>

  )
}