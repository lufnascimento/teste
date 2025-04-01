import { useData } from "../hooks/useData";

export function PlayerStats2() {
  const { data } = useData();

  return (
    <div className="flex flex-col gap-[.3125rem] items-end animate-fade-in" style={{ zoom: 1.15 }}>
      <div className="flex items-center gap-1.5 overflow-visible relative">
        <div className="rounded-tl-lg rounded-br-lg w-[11.625rem] h-6 grid place-items-center px-2 py-1.5 bg-gradient-to-r bg-black/70 to-black/60 border-[.05rem] border-white/[0.03]">
          <div className="w-full h-2 bg-[#DDDDDD]/15 rounded-[.0625rem] relative">
            <div className="absolute right-0 top-0 h-2 bg-[#D3132F]" style={{ width: `${data.health}%` }} />
          </div>
        </div>
        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
          <g clip-path="url(#clip0_2010_2227)">
            <path d="M0 8C0 3.58172 3.58172 0 8 0H24V16C24 20.4183 20.4183 24 16 24H0V8Z" fill="url(#paint0_linear_2010_2227)" fill-opacity="0.6" />
            <path d="M1 -5C14.8423 -1.86664 22.2453 -0.637386 31 -5V25H1V-5Z" fill="#D3132F" />
            <path d="M0 9.53846C13.8423 12.72 21.2453 11.4297 30 7V40H0V9.53846Z" fill="black" fill-opacity="0.2" />
            <path d="M8.97115 6C10.474 6 11.4711 6.92313 11.9999 7.59375C12.5274 6.92219 13.5258 6 15.0286 6C16.923 6 18.4802 7.57937 18.4999 9.52031C18.5168 11.2144 17.9177 12.7787 16.6683 14.3016C16.0818 15.0166 15.0183 16.1597 12.5624 17.8269C12.3968 17.9404 12.2007 18.0011 11.9999 18.0011C11.7991 18.0011 11.603 17.9404 11.4374 17.8269C8.98146 16.1597 7.91802 15.0166 7.33146 14.3016C6.08146 12.7784 5.48302 11.2141 5.4999 9.52031C5.51959 7.57937 7.07677 6 8.97115 6ZM11.9999 17V10.4869C11.9999 9.87344 11.8365 9.27562 11.5558 8.73C11.5552 8.72826 11.5543 8.72659 11.5533 8.725C11.3713 8.39637 11.1421 8.0962 10.873 7.83406C10.3065 7.28125 9.66677 7 8.97115 7C7.62271 7 6.51427 8.135 6.50021 9.53125C6.46865 12.8003 9.26146 15.1409 11.9999 17Z" fill="white" />
          </g>
          <path d="M0.5 8C0.5 3.85786 3.85786 0.5 8 0.5H23.5V16C23.5 20.1421 20.1421 23.5 16 23.5H0.5V8Z" stroke="#D3132F" />
          <defs>
            <linearGradient id="paint0_linear_2010_2227" x1="0" y1="12" x2="24" y2="12" gradientUnits="userSpaceOnUse">
              <stop />
              <stop offset="1" stop-opacity="0.85" />
            </linearGradient>
            <clipPath id="clip0_2010_2227">
              <path d="M0 8C0 3.58172 3.58172 0 8 0H24V16C24 20.4183 20.4183 24 16 24H0V8Z" fill="white" />
            </clipPath>
          </defs>
        </svg>
      </div>
      {data.armour > 0 && (
        <div className="flex items-center gap-1.5 overflow-visible relative">
          <div className="rounded-tl-lg rounded-br-lg w-[11.625rem] h-6 grid place-items-center px-2 py-1.5 bg-gradient-to-r bg-black/70 to-black/60 border-[.05rem] border-white/[0.03]">
            <div className="w-full h-2 bg-[#DDDDDD]/15 rounded-[.0625rem] relative">
              <div className="absolute right-0 top-0 h-2 bg-[#1E90F3]" style={{ width: `${data.armour}%` }} />
            </div>

          </div>
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <g clip-path="url(#clip0_2010_2213)">
              <path d="M0 8C0 3.58172 3.58172 0 8 0H24V16C24 20.4183 20.4183 24 16 24H0V8Z" fill="url(#paint0_linear_2010_2213)" fill-opacity="0.6" />
              <path d="M1 -5C14.8423 -1.86664 22.2453 -0.637386 31 -5V25H1V-5Z" fill="#1E90F3" />
              <path d="M0 9.53846C13.8423 12.72 21.2453 11.4297 30 7V40H0V9.53846Z" fill="black" fill-opacity="0.2" />
              <path d="M12.372 5.98802C12.1294 5.90592 11.8665 5.90592 11.624 5.98802L7.10663 7.51802C6.9595 7.56581 6.82955 7.65558 6.73277 7.77628C6.636 7.89698 6.57663 8.04334 6.56197 8.19735C6.3373 11.0147 6.7273 13.098 7.6533 14.672C8.5493 16.1953 9.98264 17.3027 11.998 18.128C14.0153 17.3027 15.45 16.1953 16.346 14.672C17.2726 13.0987 17.6626 11.0147 17.438 8.19735C17.4233 8.04334 17.3639 7.89698 17.2672 7.77628C17.1704 7.65558 17.0404 7.56581 16.8933 7.51802L12.372 5.98802ZM11.3033 5.04135C11.7538 4.88863 12.242 4.88839 12.6926 5.04068L17.214 6.57068C17.5461 6.68129 17.8386 6.88667 18.0554 7.1615C18.2721 7.43634 18.4038 7.76861 18.434 8.11735C18.6693 11.0573 18.274 13.368 17.208 15.1793C16.1386 16.996 14.434 18.2447 12.1813 19.132C12.0635 19.1784 11.9324 19.1784 11.8146 19.132C9.56397 18.2447 7.85997 16.996 6.7913 15.1793C5.72597 13.368 5.33063 11.0567 5.5653 8.11735C5.59552 7.76861 5.72713 7.43634 5.94392 7.1615C6.16071 6.88667 6.45319 6.68129 6.7853 6.57068L11.3033 5.04135Z" fill="white" />
              <path opacity="0.7" d="M12 17.3333C15.3547 15.9733 16.9373 13.588 16.6287 9.08865C16.594 8.57732 16.2447 8.14465 15.76 7.97598L12.5467 6.85732C12.3709 6.79612 12.1861 6.7648 12 6.76465V17.3333Z" fill="white" />
            </g>
            <path d="M0.5 8C0.5 3.85786 3.85786 0.5 8 0.5H23.5V16C23.5 20.1421 20.1421 23.5 16 23.5H0.5V8Z" stroke="#1E90F3" />
            <defs>
              <linearGradient id="paint0_linear_2010_2213" x1="0" y1="12" x2="24" y2="12" gradientUnits="userSpaceOnUse">
                <stop />
                <stop offset="1" stop-opacity="0.85" />
              </linearGradient>
              <clipPath id="clip0_2010_2213">
                <path d="M0 8C0 3.58172 3.58172 0 8 0H24V16C24 20.4183 20.4183 24 16 24H0V8Z" fill="white" />
              </clipPath>
            </defs>
          </svg>

        </div>
      )}
    </div>
  );
}
