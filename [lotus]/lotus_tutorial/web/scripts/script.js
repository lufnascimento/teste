const open = () => {
  document.body.style.display = 'block'
}

const close = () => {
  document.body.style.display = 'none'
  document.querySelector('#video').innerHTML = ''
  fetch('https://lotus_tutorial/close', { method: 'POST' })
}

const openVideo = (url) => {
  document.querySelector('#video').innerHTML = `<iframe frameborder="0" allowfullscreen></iframe>`
  document.querySelector('#video iframe').src = url
  document.querySelector('#video').style.display = 'block'
}

window.addEventListener('message', ({ data }) => {
  if (data.action === 'open') open()
  if (data.action === 'close') close()
})

window.addEventListener('keydown', ({ key }) => {
  if (key === 'Escape') {
    if (document.querySelector('#video').style.display === 'block') {
      document.querySelector('#video').innerHTML = ''
      document.querySelector('#video').style.display = 'none'
    } else {
      close()
    }
  } 
})