<div align="center">

  <img src="https://github.com/FwSchultz/assets/blob/main/bots/FwS-Bots/Bot.png" alt="logo" width="200" height="auto" />
  <h1>HLL-Settings-Backup- & Restore- and Movie-Rename Script</h1>
  
<!-- Badges -->
<p>
  <a href="https://github.com/FwSchultz/HLL-Settings-Backup-Restore-Script/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/FwSchultz/HLL-Settings-Backup-Restore-Script" alt="contributors" />
  </a>
  <a href="">
    <img src="https://img.shields.io/github/last-commit/FwSchultz/HLL-Settings-Backup-Restore-Script" alt="last update" />
  </a>
  <a href="https://github.com/FwSchultz/HLL-Settings-Backup-Restore-Script/network/members">
    <img src="https://img.shields.io/github/forks/FwSchultz/HLL-Settings-Backup-Restore-Script" alt="forks" />
  </a>
  <a href="https://github.com/FwSchultz/HLL-Settings-Backup-Restore-Script/stargazers">
    <img src="https://img.shields.io/github/stars/FwSchultz/HLL-Settings-Backup-Restore-Script" alt="stars" />
  </a>
  <a href="https://github.com/FwSchultz/HLL-Settings-Backup-Restore-Script/issues/">
    <img src="https://img.shields.io/github/issues/FwSchultz/HLL-Settings-Backup-Restore-Script" alt="open issues" />
  </a>
  <a href="https://github.com/FwSchultz/HLL-Settings-Backup-Restore-Script/blob/master/LICENSE">
    <img src="https://img.shields.io/github/license/FwSchultz/HLL-Settings-Backup-Restore-Script.svg" alt="license" />
  </a>
</p>
   
<h4>
    <a href="https://github.com/FwSchultz/HLL-Settings-Backup-Restore-Script">Documentation</a>
  <span> · </span>
    <a href="https://github.com/FwSchultz/HLL-Settings-Backup-Restore-Script/issues/">Report Bug</a>
  <span> · </span>
    <a href="https://github.com/FwSchultz/HLL-Settings-Backup-Restore-Script/issues/">Request Feature</a>
  </h4>
</div>

<br />

# HLL Backup & Video Manager

A simple Windows tool to manage **Hell Let Loose** config backups and disable intro videos.

---

## 🛠 Features

- 🎞️ **Rename Intro Videos**  
  Automatically renames intro videos in the HLL game folder (for faster startup)

- 💾 **Create Backup**  
  Saves all `.ini` config files from your HLL user profile (Graphic-, Input- and Output-Settings).
  This means you will never lose your in-game settings again.													 

- ♻️ **Restore Backup**  
  Restores your previous configuration with one click

---

## 🚀 How to Use

### Option 1: Run the `.exe`

1. Download `HLL_BackupVideoManage.exe`
2. Double-click to open the GUI
3. Choose an action
🆘Attention!!!🆘
It is possible that your firewall may block it because it is not verified by Windows.
Don't worry, I will gladly provide you with the code. 

### Option 2: Use `.bat` file (if `.exe` is blocked)

1. Make sure PowerShell scripts are allowed  
   (`Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`)
2. Run `start_backupvideomanager.bat`

---

## 📂 Included Files

| File                              | Description                                |
|-----------------------------------|--------------------------------------------|
| `HLL_BackupVideoManager.exe`      | Main application (GUI)                     |
| `start_backupvideomanager.bat`    | Starts via PowerShell                      |
| `HLL_BackupVideoManager.ps1`      | PowerShell source script                   |
| `README.md`                       | Project documentation                      |

---

## ℹ️ Info

> A community tool from Fw.Schultz
> Support: [@Fw.Schultz](https://discord.com/users/275297833970565121)
