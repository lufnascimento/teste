/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Arimo'],
      },
      colors: {
        primary: '#1E90F3',
      },
      animation: {
        move: 'move .8s infinite',
        store: 'store .6s ease-in-out infinite'
      },
      keyframes: {
        move: {
          '0%, 100%': { bottom: 0 },
          '50%': { bottom: '.5rem' },
        },
        store: {
          '0%, 100%': { 
            color: '#FFDA00',
            transform: 'scale(1)', 
            textShadow: '0px 0px 10px rgba(255, 225, 51, 0.60)'
          },
          '50%': { 
            color: '#eed12f', 
            transform: 'scale(1.1)', 
            textShadow: '0px 0px 10px rgba(255, 224, 51, 1)'
          },
        }
      },
      backgroundImage: {
        "map": "url('/images/map.png')",
        "top": "url('/images/top.png')",
        "item": "url('/images/item.png')",
        "coins": "url('/images/coins.png')",
        "coinsFlyer": "url('/images/coinsFlyer.png')",
        "flyer": "url('/images/flyer.png')",
        "top3": "linear-gradient(180deg, #13050B 0%, rgba(19, 5, 11, 0.00) 100%)",
        "header": "radial-gradient(2000.82% 1973.91% at 76.19% -592.62%, #A6013A 0%, rgba(0, 0, 0, 0.00) 100%)",
        "background": "url('/images/background.png')",

        "box": "url('/images/box.png')",
        "store": "url('/images/store.png')",
        "skins": "url('/images/skins.png')",
        "richs": "url('/images/richs.png')",
        "online": "url('/images/online.png')",
        "ranking": "url('/images/ranking.png')",
        "factions": "url('/images/factions.png')",
        "bet": "url('/images/lotusBet.png')",
        "battlepass": "url('/images/battlepass.png')",
      },
    },
  },
  plugins: [],
}

