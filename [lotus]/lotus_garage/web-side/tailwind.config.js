/** @type {import('tailwindcss').Config} */
export default {
  content: [
    './index.html',
    './src/**/*.{html,tsx}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Montserrat']
      },
      colors: {
        primary: '#1E90F3'
      },
      background: {
      },
      backgroundImage: {
        'back': 'url("/images/background.webp")',
        'primary-gradient': 'linear-gradient(135deg, #1E90F3 0%, #1871BF 100%)'
      },
      boxShadow: {
        'primary': '0 0 .875rem 0 #1E90F3'
      }
    },
  },
  plugins: [
    require('tailwindcss-animated')
  ],
}

