const { app, BrowserWindow, Menu } = require('electron');
const path = require('path');

function createWindow() {
  Menu.setApplicationMenu(null);

  const win = new BrowserWindow({
    width: 1380,
    height: 880,
    minWidth: 900,
    minHeight: 650,
    title: 'DOTA 2 MOLD DRAFT',
    icon: path.join(__dirname, 'icon.ico'),
    backgroundColor: '#0d0718',
    autoHideMenuBar: true,
    webPreferences: {
      nodeIntegration: false,
      contextIsolation: true
    }
  });

  win.loadFile('index.html');
}

app.whenReady().then(() => {
  createWindow();
  app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) createWindow();
  });
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') app.quit();
});
