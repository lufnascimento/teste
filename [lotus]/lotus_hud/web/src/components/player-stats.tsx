import clsx from "clsx";
import { useData } from "../hooks/useData";
import { useEffect, useRef, useState } from "react";
import { useHud } from "../hooks/useHud";

export function PlayerStats() {
  const { data } = useData();
  const { hud } = useHud();

  return (
    <div className={clsx('flex  gap-[.12rem]')} style={{ zoom: 1.15 }}>
      <div className="size-[2.25rem] rounded-tl-lg rounded-br-lg border border-[#D3132F] relative overflow-hidden">
        <svg className="absolute size-5 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 z-20" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M6.21412 2.5C8.09263 2.5 9.33912 3.65391 10.0001 4.49219C10.6594 3.65273 11.9075 2.5 13.786 2.5C16.154 2.5 18.1004 4.47422 18.1251 6.90039C18.1461 9.01797 17.3973 10.9734 15.8356 12.877C15.1024 13.7707 13.7731 15.1996 10.7032 17.2836C10.4962 17.4255 10.251 17.5014 10.0001 17.5014C9.74907 17.5014 9.50396 17.4255 9.29693 17.2836C6.22701 15.1996 4.89771 13.7707 4.16451 12.877C2.60201 10.973 1.85396 9.01758 1.87506 6.90039C1.89967 4.47422 3.84615 2.5 6.21412 2.5ZM10.0001 16.25V8.10859C10.0001 7.3418 9.79576 6.59453 9.44498 5.9125C9.44412 5.91033 9.44308 5.90824 9.44185 5.90625C9.21433 5.49546 8.92782 5.12025 8.59146 4.79258C7.88326 4.10156 7.08365 3.75 6.21412 3.75C4.52857 3.75 3.14302 5.16875 3.12545 6.91406C3.08599 11.0004 6.57701 13.9262 10.0001 16.25Z" fill="white" />
        </svg>
        <svg className="absolute top-[100%] left-[-1px]" style={{ top: `calc(${data.health}% + 4px)` }} width="36" height="40" viewBox="0 0 36 40" fill="none" xmlns="http://www.w3.org/2000/svg">
          <g clip-path="url(#clip0_2010_2504)">
            <path d="M0 8C0 3.58172 3.58172 0 8 0H36V32C36 36.4183 32.4183 40 28 40H0V8Z" fill="url(#paint0_linear_2010_2504)" fill-opacity="0.6" />
            <path d="M1 0C17.6108 4.07337 26.4943 5.6714 37 0V39H1V0Z" fill="#D3132F" />
            <path d="M1 8.46154C17.6108 12.8 26.4943 11.0405 37 5V50H1V8.46154Z" fill="black" fill-opacity="0.2" />
          </g>
          <defs>
            <linearGradient id="paint0_linear_2010_2504" x1="0" y1="20" x2="36" y2="20" gradientUnits="userSpaceOnUse">
              <stop />
              <stop offset="1" stop-opacity="0.85" />
            </linearGradient>
            <clipPath id="clip0_2010_2504">
              <path d="M0 8C0 3.58172 3.58172 0 8 0H36V32C36 36.4183 32.4183 40 28 40H0V8Z" fill="white" />
            </clipPath>
          </defs>
        </svg>
      </div>
      <div className="size-[2.25rem] rounded-tl-lg rounded-br-lg border border-[#1E90F3] relative overflow-hidden">
        <svg className="absolute size-5 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 z-20" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M10.465 2.48499C10.1617 2.38237 9.83318 2.38237 9.52996 2.48499L3.88329 4.39749C3.69937 4.45723 3.53693 4.56945 3.41597 4.72032C3.295 4.8712 3.22079 5.05415 3.20246 5.24666C2.92163 8.76832 3.40913 11.3725 4.56663 13.34C5.68663 15.2442 7.47829 16.6283 9.99746 17.66C12.5191 16.6283 14.3125 15.2442 15.4325 13.34C16.5908 11.3733 17.0783 8.76832 16.7975 5.24666C16.7791 5.05415 16.7049 4.8712 16.584 4.72032C16.463 4.56945 16.3005 4.45723 16.1166 4.39749L10.465 2.48499ZM9.12913 1.30166C9.69223 1.11075 10.3025 1.11046 10.8658 1.30082L16.5175 3.21332C16.9326 3.35158 17.2982 3.6083 17.5692 3.95185C17.8402 4.29539 18.0047 4.71073 18.0425 5.14666C18.3366 8.82166 17.8425 11.71 16.51 13.9742C15.1733 16.245 13.0425 17.8058 10.2266 18.915C10.0794 18.973 9.91556 18.973 9.76829 18.915C6.95496 17.8058 4.82496 16.245 3.48913 13.9742C2.15746 11.71 1.66329 8.82082 1.95663 5.14666C1.99439 4.71073 2.15891 4.29539 2.4299 3.95185C2.70088 3.6083 3.06649 3.35158 3.48163 3.21332L9.12913 1.30166Z" fill="white"/>
          <path opacity="0.7" d="M10 16.6666C14.1933 14.9666 16.1717 11.985 15.7858 6.36081C15.7425 5.72164 15.3058 5.18081 14.7 4.96998L10.6833 3.57164C10.4636 3.49515 10.2326 3.456 10 3.45581V16.6666Z" fill="white"/>
        </svg>

        <svg className="absolute top-[100%] left-[-1px]" style={{ top: `calc(${data.armour}% + 4px)` }} width="36" height="40" viewBox="0 0 36 40" fill="none" xmlns="http://www.w3.org/2000/svg">
          <g clip-path="url(#clip0_2010_2504)">
            <path d="M0 8C0 3.58172 3.58172 0 8 0H36V32C36 36.4183 32.4183 40 28 40H0V8Z" fill="url(#paint0_linear_2010_2504)" fill-opacity="0.6" />
            <path d="M1 0C17.6108 4.07337 26.4943 5.6714 37 0V39H1V0Z" fill="#1E90F3" />
            <path d="M1 8.46154C17.6108 12.8 26.4943 11.0405 37 5V50H1V8.46154Z" fill="black" fill-opacity="0.2" />
          </g>
          <defs>
            <linearGradient id="paint0_linear_2010_2504" x1="0" y1="20" x2="36" y2="20" gradientUnits="userSpaceOnUse">
              <stop />
              <stop offset="1" stop-opacity="0.85" />
            </linearGradient>
            <clipPath id="clip0_2010_2504">
              <path d="M0 8C0 3.58172 3.58172 0 8 0H36V32C36 36.4183 32.4183 40 28 40H0V8Z" fill="white" />
            </clipPath>
          </defs>
        </svg>
      </div>
    </div>
  );
}
