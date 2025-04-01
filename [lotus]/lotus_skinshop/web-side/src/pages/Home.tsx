import clsx from "clsx";
import Header from "../assets/header.svg";
import Shirt from "../assets/shirt.png";
import Hat from "../assets/hat.png";
import { useEffect, useState } from "react";
import Card from "@/components/card";
import * as Slider from "@radix-ui/react-slider";
import Shortcuts from "../assets/shortcuts.svg";
import { useNui } from "@/hooks/useNui";
import { emit } from "@/utils/emit";
import Cam from "@/components/cam";
import { observe } from "@/hooks/observe";

export default function Home() {
  const [currentCategory, setCurrentCategory] = useState<"Roupas" | "Acessórios">("Roupas");
  const [rotate, setRotate] = useState(0);
  const { customs, setCustoms } = useNui();
  const [horizontal, setHorizontal] = useState(0);
  const [vertical, setVertical] = useState(0.15);
  const categories = [
    { name: "Roupas", icon: Shirt, style: "max-h-5" },
    { name: "Acessórios", icon: Hat, style: "max-h-4" },
  ];

  function handleSave() {
    emit("SAVE", customs);
  }

  observe("UPDATE_CUSTOM", setCustoms);

  function handleRotate(value: number) {
    setRotate(value);
    emit("ROTATE", value);
  }

  function handleHorizontal(value: number) {
    setHorizontal(value);
    emit("HORIZONTAL", value);
  }

  function handleVertical(value: number) {
    setVertical(value);
    emit("VERTICAL", value);
  }

  useEffect(() => {
    const keyHandler = (e: KeyboardEvent) => {
      if (e.key === "a") {
        if (rotate === 0) return;
        setRotate((prev) => prev - 1);
        emit("ROTATE", rotate - 1);
      }
      if (e.key === "d") {
        if (rotate === 360) return;
        setRotate((prev) => prev + 1);
        emit("ROTATE", rotate + 1);
      }
    };

    window.addEventListener("keydown", keyHandler);
    return () => window.removeEventListener("keydown", keyHandler);
  }, [rotate]);

  return (
    <div
      className="w-full h-full flex justify-end"
      style={{
        background:
          "linear-gradient(270deg, rgba(0, 0, 0, 0.85) 0%, rgba(0, 0, 0, 0.00) 100%), linear-gradient(270deg, rgb(30, 144, 243, .25) 0%, rgba(229, 23, 23, 0.00) 40%)",
      }}
    >
      <div className="absolute left-1/2 transform -translate-x-1/2 flex flex-col items-center gap-3 top-8">
        <svg width="22" height="22" viewBox="0 0 22 22" fill="none">
          <path
            d="M11.0903 12.4258C12.9176 12.3507 14.3995 10.7519 14.3338 9.05675C14.3671 7.47627 12.8247 5.69339 10.8319 5.78348C9.21783 5.85556 7.67155 7.33273 7.64372 9.04234C7.61135 11.0141 9.38877 12.4955 11.0903 12.4258Z"
            fill="white"
          />
          <path
            d="M2.90078 12.3922C2.9389 12.773 3.14039 13.0904 3.37486 13.3832C3.76393 13.8675 4.24134 14.2276 4.88273 14.2901C5.29328 14.33 5.70806 14.3375 6.12103 14.3381C9.21642 14.3433 12.3119 14.3447 15.4075 14.3423C15.9218 14.3423 16.4362 14.3324 16.9505 14.3069C17.6273 14.2729 18.1528 13.9354 18.5757 13.4342C18.9388 13.003 19.127 12.5099 19.1227 11.9327C19.1094 10.1516 19.1182 8.37026 19.1185 6.58739C19.1185 6.46246 19.1152 6.33724 19.1185 6.21231C19.14 5.38709 18.7073 4.80091 18.0899 4.32253C17.6923 4.01442 17.2279 3.88109 16.7212 3.88079C15.7784 3.88079 14.8357 3.87058 13.893 3.86457H13.6985C13.5433 3.56427 13.3983 3.27238 13.2447 2.9859C13.0162 2.55797 12.8964 2.388 12.6111 2.21172C12.3861 2.07301 12.1264 1.99967 11.8614 2.00001H10.1203C9.87123 1.99892 9.62635 2.06371 9.41086 2.1877L9.40753 2.1895C9.12314 2.35497 8.93768 2.60662 8.79095 2.8922C8.62607 3.21232 8.45816 3.53124 8.28692 3.86337H8.15683C7.21411 3.86818 6.27139 3.87058 5.32837 3.87869C4.23015 3.8883 3.30135 4.54145 2.95736 5.57598C2.87598 5.82102 2.86811 6.0976 2.8666 6.35976C2.85913 8.05105 2.85832 9.74273 2.86417 11.4348C2.86538 11.7525 2.86841 12.0736 2.90078 12.3922ZM7.6894 6.2985C8.3199 5.53304 9.16005 5.0913 10.1297 4.90931C11.0358 4.73964 11.9316 4.80091 12.7763 5.1922C14.4488 5.96637 15.2747 7.3057 15.2935 9.1123C15.3086 10.6018 14.6932 11.8258 13.4353 12.6537C12.5921 13.2087 12.0224 13.3919 10.9463 13.3384C9.93365 13.4228 9.01695 13.0603 8.20947 12.4018C7.33936 11.6922 6.85106 10.7643 6.71673 9.66155C6.56334 8.4099 6.88434 7.27597 7.6894 6.2985Z"
            fill="white"
          />
          <path
            d="M9.68193 15.7159C9.54229 15.5763 9.37358 15.4688 9.18763 15.4007C9.00168 15.3327 8.80299 15.3059 8.6055 15.3222H8.59884C8.41157 15.3384 8.31869 15.4702 8.27452 15.6342C8.23216 15.7916 8.21401 15.9471 8.36195 16.075C8.74255 16.4027 9.1183 16.7357 9.49708 17.066C9.52013 17.0845 9.54416 17.1018 9.56909 17.1177L9.55457 17.1579C9.32191 17.1456 9.08896 17.1387 8.85691 17.1198C7.8077 17.0348 6.76211 16.9177 5.73105 16.6994C4.59017 16.4591 3.47167 16.1486 2.43608 15.5973C1.97137 15.3498 1.53481 15.063 1.21048 14.6393C0.960583 14.3126 0.824743 13.9441 0.977224 13.545C1.05467 13.3426 1.2126 13.1666 1.35208 12.9928C1.47309 12.8408 1.62859 12.715 1.75506 12.566C1.94808 12.3384 1.94324 12.1156 1.75687 11.9207C1.61861 11.7754 1.31305 11.7672 1.11549 11.9108C0.691929 12.2186 0.375167 12.6147 0.145236 13.082L0.143729 13.0853C0.0491124 13.2774 -3.96475e-05 13.4885 2.20083e-05 13.7024V13.9988C-0.0012904 14.239 0.056112 14.476 0.167321 14.6895C0.500116 15.3201 1.04741 15.7705 1.65673 16.145C2.62063 16.7375 3.67861 17.106 4.76685 17.394C5.87606 17.6863 7.00751 17.8881 8.14987 17.9973C8.69596 18.051 9.24356 18.0895 9.82292 18.1375C9.77754 18.1889 9.74426 18.23 9.70765 18.2675C9.40995 18.5732 9.10681 18.8735 8.81516 19.1849C8.63182 19.3813 8.57313 19.533 8.63 19.6997C8.66341 19.7888 8.72379 19.8656 8.80287 19.9193C8.88196 19.9731 8.97586 20.0013 9.07171 20H9.11407C9.23858 20.0003 9.35819 19.9519 9.44687 19.8651L11.3057 18.0507C11.3538 18.0033 11.3919 17.9469 11.4179 17.8847C11.4439 17.8225 11.4572 17.7559 11.4569 17.6886C11.4571 17.6217 11.444 17.5554 11.4183 17.4935C11.3926 17.4317 11.3548 17.3755 11.3072 17.3282L9.68193 15.7159Z"
            fill="white"
          />
          <path
            d="M21.7721 12.9489C21.5255 12.5363 21.2384 12.1591 20.8342 11.8868C20.6197 11.742 20.3616 11.779 20.2064 11.9606C20.0337 12.163 20.0388 12.3699 20.23 12.5757C20.4007 12.7594 20.584 12.9318 20.7504 13.1192C21.1489 13.5678 21.174 14.0624 20.8336 14.5582C20.6019 14.8952 20.289 15.1447 19.9453 15.3597C19.163 15.8504 18.3004 16.1537 17.4164 16.4024C16.3197 16.7108 15.1973 16.8874 14.0697 17.0369C13.9263 17.0558 13.7771 17.0759 13.6461 17.1306C13.4682 17.2045 13.3853 17.4255 13.4344 17.6138C13.4949 17.8456 13.6501 17.9955 13.8606 17.9849C14.1468 17.9708 14.4333 17.9447 14.7168 17.9051C16.1506 17.7045 17.5583 17.3967 18.9061 16.8576C19.7375 16.5252 20.5353 16.1285 21.1858 15.5018C21.6468 15.0576 22.0522 14.5708 21.9863 13.8246C22.0371 13.5315 21.9424 13.233 21.7721 12.9489Z"
            fill="white"
          />
        </svg>
        <div className="space-y-2">
          <div>
            <Slider.Root
              className="relative flex items-center select-none touch-none h-5"
              defaultValue={[0]}
              min={-0.6}
              onValueChange={(e: any) => handleHorizontal(e[0])}
              value={[horizontal]}
              max={0.6}
              step={0.1}
            >
              <Slider.Track className="bg-white/5 relative grow rounded h-[0.5rem] w-[11.25rem] flex-none">
                <Slider.Range className="absolute bg-transparent rounded-sm h-full flex-none" />
              </Slider.Track>
              <Slider.Thumb
                style={{
                  zoom: 2.5,
                }}
                className="outline-none w-[1.1875rem] h-[1.1875rem]"
                aria-label="Volume"
              >
                <svg
                  className="w-[2.1875rem] h-[1.1875rem]"
                  width="82"
                  height="81"
                  viewBox="0 0 82 81"
                  fill="none"
                 
                >
                  <g filter="url(#filter0_d_816_5455)">
                    <rect
                      x="41"
                      y="23"
                      width="25"
                      height="25"
                      rx="4"
                      transform="rotate(45 41 23)"
                      fill="#141414"
                      fillOpacity="0.8"
                      shapeRendering="crispEdges"
                    />
                    <rect
                      x="41"
                      y="23"
                      width="25"
                      height="25"
                      rx="4"
                      transform="rotate(45 41 23)"
                      fill="url(#paint0_linear_816_5455)"
                      shapeRendering="crispEdges"
                    />
                    <rect
                      x="41"
                      y="23.5657"
                      width="24.2"
                      height="24.2"
                      rx="3.6"
                      transform="rotate(45 41 23.5657)"
                      stroke="rgb(30, 144, 243)"
                      strokeWidth="0.8"
                      shapeRendering="crispEdges"
                    />
                    <path
                      d="M48.7828 41.2437L45.8201 44.4433C45.6811 44.5934 45.4926 44.6777 45.296 44.6777C45.0995 44.6777 44.911 44.5934 44.772 44.4433C44.633 44.2932 44.5549 44.0896 44.5549 43.8774C44.5549 43.6651 44.633 43.4615 44.772 43.3114L46.4709 41.4776H35.5291L37.228 43.3114C37.367 43.4615 37.4451 43.6651 37.4451 43.8774C37.4451 44.0896 37.367 44.2932 37.228 44.4433C37.089 44.5934 36.9005 44.6777 36.704 44.6777C36.5074 44.6777 36.3189 44.5934 36.1799 44.4433L33.2172 41.2437C33.1484 41.1694 33.0937 41.0812 33.0565 40.9841C33.0192 40.8869 33 40.7829 33 40.6777C33 40.5726 33.0192 40.4685 33.0565 40.3714C33.0937 40.2743 33.1484 40.1861 33.2172 40.1118L36.1799 36.9122C36.3189 36.7621 36.5074 36.6777 36.704 36.6777C36.9005 36.6777 37.089 36.7621 37.228 36.9122C37.367 37.0622 37.4451 37.2658 37.4451 37.4781C37.4451 37.6904 37.367 37.8939 37.228 38.044L35.5291 39.8778H46.4709L44.772 38.044C44.633 37.8939 44.5549 37.6904 44.5549 37.4781C44.5549 37.2658 44.633 37.0622 44.772 36.9122C44.911 36.7621 45.0995 36.6777 45.296 36.6777C45.4926 36.6777 45.6811 36.7621 45.8201 36.9122L48.7828 40.1118C48.8516 40.1861 48.9063 40.2743 48.9435 40.3714C48.9808 40.4685 49 40.5726 49 40.6777C49 40.7829 48.9808 40.8869 48.9435 40.9841C48.9063 41.0812 48.8516 41.1694 48.7828 41.2437Z"
                      fill="white"
                    />
                  </g>
                  <defs>
                    <filter
                      id="filter0_d_816_5455"
                      x="-0.877674"
                      y="-1.2"
                      width="83.7553"
                      height="83.7552"
                      filterUnits="userSpaceOnUse"
                      colorInterpolationFilters="sRGB"
                    >
                      <feFlood floodOpacity="0" result="BackgroundImageFix" />
                      <feColorMatrix
                        in="SourceAlpha"
                        type="matrix"
                        values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"
                        result="hardAlpha"
                      />
                      <feOffset />
                      <feGaussianBlur stdDeviation="12.1" />
                      <feComposite in2="hardAlpha" operator="out" />
                      <feColorMatrix
                        type="matrix"
                        values="0 0 0 0 0.898039 0 0 0 0 0.0901961 0 0 0 0 0.0901961 0 0 0 0.25 0"
                      />
                      <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_816_5455" />
                      <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_816_5455" result="shape" />
                    </filter>
                    <linearGradient
                      id="paint0_linear_816_5455"
                      x1="35.1185"
                      y1="17.1806"
                      x2="73.2518"
                      y2="55.3139"
                      gradientUnits="userSpaceOnUse"
                    >
                      <stop stopColor="rgb(30, 144, 243)" />
                      <stop offset="1" stopColor="rgb(30, 144, 243)" stopOpacity="0" />
                    </linearGradient>
                  </defs>
                </svg>
              </Slider.Thumb>
            </Slider.Root>
          </div>
          <div>
            <Slider.Root
              className="relative flex items-center select-none touch-none h-5"
              defaultValue={[0.15]}
              onValueChange={(e: any) => handleVertical(e[0])}
              value={[vertical]}
              min={-0.6}
              max={0.9}
              step={0.1}
            >
              <Slider.Track className="bg-white/5 relative grow rounded h-[0.5rem] w-[11.25rem] flex-none">
                <Slider.Range className="absolute bg-transparent rounded-sm h-full flex-none" />
              </Slider.Track>
              <Slider.Thumb
                style={{
                  zoom: 2.5,
                }}
                className="outline-none w-[1.1875rem] h-[1.1875rem]"
                aria-label="Volume"
              >
                <svg
                  className="w-[2.1875rem] h-[1.1875rem]"
                  width="82"
                  height="82"
                  viewBox="0 0 82 82"
                  fill="none"
                 
                >
                  <g filter="url(#filter0_d_816_5470)">
                    <path
                      d="M38.1716 26.1837C39.7337 24.6216 42.2663 24.6216 43.8284 26.1837L55.8492 38.2045C57.4113 39.7666 57.4113 42.2992 55.8492 43.8613L43.8284 55.8821C42.2663 57.4442 39.7337 57.4442 38.1716 55.8821L26.1508 43.8613C24.5887 42.2992 24.5887 39.7666 26.1508 38.2045L38.1716 26.1837Z"
                      fill="#141414"
                      fillOpacity="0.8"
                      shapeRendering="crispEdges"
                    />
                    <path
                      d="M38.1716 26.1837C39.7337 24.6216 42.2663 24.6216 43.8284 26.1837L55.8492 38.2045C57.4113 39.7666 57.4113 42.2992 55.8492 43.8613L43.8284 55.8821C42.2663 57.4442 39.7337 57.4442 38.1716 55.8821L26.1508 43.8613C24.5887 42.2992 24.5887 39.7666 26.1508 38.2045L38.1716 26.1837Z"
                      fill="url(#paint0_linear_816_5470)"
                      shapeRendering="crispEdges"
                    />
                    <path
                      d="M43.5456 26.4665L55.5664 38.4873C56.9723 39.8932 56.9723 42.1726 55.5664 43.5785L43.5456 55.5993C42.1397 57.0052 39.8603 57.0052 38.4544 55.5993L26.4336 43.5785C25.0277 42.1726 25.0277 39.8932 26.4336 38.4873L38.4544 26.4665C39.8603 25.0606 42.1397 25.0606 43.5456 26.4665Z"
                      stroke="rgb(30, 144, 243)"
                      strokeWidth="0.8"
                      shapeRendering="crispEdges"
                    />
                    <path
                      d="M40.4341 48.8157L37.2344 45.853C37.0843 45.714 37 45.5255 37 45.329C37 45.1324 37.0843 44.9439 37.2344 44.805C37.3845 44.666 37.5881 44.5879 37.8004 44.5879C38.0126 44.5879 38.2162 44.666 38.3663 44.805L40.2001 46.5039L40.2001 35.562L38.3663 37.261C38.2162 37.3999 38.0126 37.478 37.8004 37.478C37.5881 37.478 37.3845 37.3999 37.2344 37.261C37.0843 37.122 37 36.9335 37 36.7369C37 36.5404 37.0843 36.3519 37.2344 36.2129L40.4341 33.2502C40.5084 33.1813 40.5966 33.1267 40.6937 33.0894C40.7908 33.0521 40.8949 33.033 41 33.033C41.1051 33.033 41.2092 33.0521 41.3063 33.0894C41.4034 33.1267 41.4916 33.1813 41.5659 33.2502L44.7656 36.2129C44.9157 36.3519 45 36.5404 45 36.7369C45 36.9335 44.9157 37.122 44.7656 37.261C44.6155 37.3999 44.4119 37.478 44.1996 37.478C43.9874 37.478 43.7838 37.3999 43.6337 37.261L41.7999 35.562L41.7999 46.5039L43.6337 44.805C43.7838 44.666 43.9874 44.5879 44.1996 44.5879C44.4119 44.5879 44.6155 44.666 44.7656 44.805C44.9157 44.9439 45 45.1324 45 45.329C45 45.5255 44.9157 45.714 44.7656 45.853L41.5659 48.8157C41.4916 48.8846 41.4034 48.9392 41.3063 48.9765C41.2092 49.0138 41.1051 49.033 41 49.033C40.8949 49.033 40.7908 49.0138 40.6937 48.9765C40.5966 48.9392 40.5084 48.8846 40.4341 48.8157Z"
                      fill="white"
                    />
                  </g>
                  <defs>
                    <filter
                      id="filter0_d_816_5470"
                      x="-0.877674"
                      y="-0.844776"
                      width="83.7553"
                      height="83.7552"
                      filterUnits="userSpaceOnUse"
                      colorInterpolationFilters="sRGB"
                    >
                      <feFlood floodOpacity="0" result="BackgroundImageFix" />
                      <feColorMatrix
                        in="SourceAlpha"
                        type="matrix"
                        values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"
                        result="hardAlpha"
                      />
                      <feOffset />
                      <feGaussianBlur stdDeviation="12.1" />
                      <feComposite in2="hardAlpha" operator="out" />
                      <feColorMatrix
                        type="matrix"
                        values="0 0 0 0 0.898039 0 0 0 0 0.0901961 0 0 0 0 0.0901961 0 0 0 0.25 0"
                      />
                      <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_816_5470" />
                      <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_816_5470" result="shape" />
                    </filter>
                    <linearGradient
                      id="paint0_linear_816_5470"
                      x1="40.9561"
                      y1="15.0815"
                      x2="40.9561"
                      y2="69.01"
                      gradientUnits="userSpaceOnUse"
                    >
                      <stop stopColor="rgb(30, 144, 243)" />
                      <stop offset="1" stopColor="rgb(30, 144, 243)" stopOpacity="0" />
                    </linearGradient>
                  </defs>
                </svg>
              </Slider.Thumb>
            </Slider.Root>
          </div>
        </div>
      </div>
      <div className="flex flex-col justify-end  gap-3  items-end absolute right-12 bottom-28" style={{ zoom: 1.1 }}>
        <div className="flex gap-4">
          <div className="flex flex-col gap-1 mt-[7.5rem]">
            {categories.map((category, key) => {
              return (
                <div
                  onClick={() => setCurrentCategory(category.name as "Roupas" | "Acessórios")}
                  key={key}
                  className="flex flex-col items-center"
                >
                  <div
                    className={clsx(
                      "w-16 h-14 bg-gradient-to-b from-white/20 to-white/5 hexagon relative cursor-pointer hover:gradient",
                      {
                        "!gradient": currentCategory === category.name,
                      }
                    )}
                  >
                    <img
                      className={`absolute top-1/2 left-[38%] transform -translate-x-1/2 -translate-y-1/2 ${category.style}`}
                      src={category.icon}
                      alt="icon"
                    />
                  </div>
                </div>
              );
            })}
          </div>
          <div className="flex flex-col gap-2.5">
            <div>
              <img className="w-64" src={Header} alt="" />
            </div>
            <div className="flex flex-col gap-2.5 h-[35.625rem] overflow-y-auto w-[102%]">
              {customs
                ?.filter((custom) => custom.category === currentCategory)
                ?.map((custom, key) => <Card {...custom} key={key} />)}
            </div>
          </div>
        </div>
        <div className="w-[19.5rem] space-y-3">
          <hr className="h-[0.0625rem] bg-gradient-to-r from-white/0 to-white/15 border-none" />
          <div className="w-full h-10 bg-gradient-to-r from-white/20 to-white/5 rounded flex items-center px-4 gap-2">
            <span className="text-sm text-white/60">A</span>
            <svg
              className="flex-none"
              width="15"
              height="16"
              viewBox="0 0 15 16"
              fill="none"
             
            >
              <path
                d="M12.4687 7.37507C12.3107 6.16928 11.7186 5.06243 10.8033 4.26171C9.888 3.46099 8.71227 3.02129 7.49617 3.02492C6.28007 3.02856 5.10699 3.47528 4.19651 4.28146C3.28603 5.08764 2.70057 6.19802 2.54973 7.40473C2.39889 8.61144 2.69301 9.83176 3.37703 10.8373C4.06105 11.8427 5.08808 12.5645 6.26587 12.8674C7.44365 13.1702 8.69144 13.0335 9.77567 12.4827C10.8599 11.9319 11.7062 11.0049 12.1562 9.87507M12.4687 13.0001V9.87507H9.34371"
                stroke="rgb(30, 144, 243)"
                strokeLinecap="round"
                strokeLinejoin="round"
              />
            </svg>
            <p className="text-sm text-white font-bold  w-12">{rotate}º</p>
            <Slider.Root
              className="relative flex items-center select-none touch-none h-5"
              defaultValue={[0]}
              onValueChange={(value: any) => handleRotate(value[0])}
              min={0}
              max={360}
              step={1}
            >
              <Slider.Track className="bg-white/5 relative grow rounded h-[0.5rem] w-[11.25rem] flex-none">
                <Slider.Range className="absolute bg-transparent rounded-sm h-full flex-none" />
              </Slider.Track>
              <Slider.Thumb className="outline-none w-[1.1875rem] h-[1.1875rem]" aria-label="Volume">
                <svg
                  className="w-[1.1875rem] h-[1.1875rem]"
                  width="28"
                  height="27"
                  viewBox="0 0 28 27"
                  fill="none"
                 
                >
                  <rect
                    x="14"
                    y="0.707107"
                    width="18"
                    height="18"
                    rx="3.5"
                    transform="rotate(45 14 0.707107)"
                    fill="black"
                    fillOpacity="0.6"
                  />
                  <rect
                    x="14"
                    y="0.707107"
                    width="18"
                    height="18"
                    rx="3.5"
                    transform="rotate(45 14 0.707107)"
                    fill="url(#paint0_linear_520_1030)"
                  />
                  <rect
                    x="14"
                    y="0.707107"
                    width="18"
                    height="18"
                    rx="3.5"
                    transform="rotate(45 14 0.707107)"
                    stroke="rgb(30, 144, 243)"
                  />
                  <path
                    d="M19.8371 13.8595L17.615 16.2592C17.5108 16.3718 17.3694 16.4351 17.222 16.4351C17.0746 16.4351 16.9332 16.3718 16.829 16.2592C16.7248 16.1467 16.6662 15.994 16.6662 15.8348C16.6662 15.6756 16.7248 15.5229 16.829 15.4103L18.1032 14.035H9.8968L11.171 15.4103C11.2752 15.5229 11.3338 15.6756 11.3338 15.8348C11.3338 15.994 11.2752 16.1467 11.171 16.2592C11.0668 16.3718 10.9254 16.4351 10.778 16.4351C10.6306 16.4351 10.4892 16.3718 10.385 16.2592L8.16292 13.8595C8.11127 13.8038 8.0703 13.7376 8.04234 13.6648C8.01439 13.592 8 13.5139 8 13.4351C8 13.3562 8.01439 13.2782 8.04234 13.2053C8.0703 13.1325 8.11127 13.0663 8.16292 13.0106L10.385 10.6109C10.4892 10.4983 10.6306 10.4351 10.778 10.4351C10.9254 10.4351 11.0668 10.4983 11.171 10.6109C11.2752 10.7234 11.3338 10.8761 11.3338 11.0353C11.3338 11.1945 11.2752 11.3472 11.171 11.4598L9.8968 12.8351H18.1032L16.829 11.4598C16.7248 11.3472 16.6662 11.1945 16.6662 11.0353C16.6662 10.8761 16.7248 10.7234 16.829 10.6109C16.9332 10.4983 17.0746 10.4351 17.222 10.4351C17.3694 10.4351 17.5108 10.4983 17.615 10.6109L19.8371 13.0106C19.8887 13.0663 19.9297 13.1325 19.9577 13.2053C19.9856 13.2782 20 13.3562 20 13.4351C20 13.5139 19.9856 13.592 19.9577 13.6648C19.9297 13.7376 19.8887 13.8038 19.8371 13.8595Z"
                    fill="white"
                  />
                  <defs>
                    <linearGradient
                      id="paint0_linear_520_1030"
                      x1="9.53006"
                      y1="-4.42271"
                      x2="38.5113"
                      y2="24.5586"
                      gradientUnits="userSpaceOnUse"
                    >
                      <stop stopColor="rgb(30, 144, 243)" />
                      <stop offset="1" stopColor="rgb(30, 144, 243)" stopOpacity="0" />
                    </linearGradient>
                  </defs>
                </svg>
              </Slider.Thumb>
            </Slider.Root>
            <span className="text-sm text-white/60">D</span>
          </div>
          <button onClick={handleSave} className="flex items-center gap-1 w-full h-12 gradient rounded justify-center">
            <svg width="20" height="20" viewBox="0 0 20 20" fill="none">
              <path
                d="M16.9123 5.24581C17.2369 5.57035 17.2369 6.09654 16.9123 6.42109L8.13343 15.2C7.78357 15.5498 7.21635 15.5498 6.86649 15.2L3.50449 11.838C3.17982 11.5133 3.17982 10.9869 3.50449 10.6623C3.82887 10.3379 4.3547 10.3375 4.67948 10.6615L7.49996 13.4751L15.7373 5.24553C16.0619 4.92125 16.5879 4.92137 16.9123 5.24581Z"
                fill="white"
              />
            </svg>
            <span className="text-white font-semibold">SALVAR</span>
          </button>
        </div>
      </div>
      <Cam />
      <img className="w-[21.1875rem] h-[2.375rem] absolute right-12 bottom-8" src={Shortcuts} alt="" />
    </div>
  );
}
