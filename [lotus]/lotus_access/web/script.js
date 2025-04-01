const app = {
  open: () => {
    document.body.style.display = 'block';
  },
  close: () => {
    document.body.style.display = 'none';
  },
  openDiscord: () => {
    window.invokeNative('openUrl', 'https://discord.gg/011roleplay');
  },
  openStore: () => {
    window.invokeNative('openUrl', 'https://capitalrj.hydrus.gg/');
  }
}

window.addEventListener('message', ({ data }) => {
  if (data.action === 'open') app.open()
  if (data.action === 'close') app.close()
});

if (!window.invokeNative) {
  app.open();
}