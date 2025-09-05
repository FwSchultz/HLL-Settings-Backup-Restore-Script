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

Ein praktisches Windows-Tool zur Verwaltung von **Hell Let Loose**-Spieleinstellungen und zur Deaktivierung von Intro-Videos.

---

## 🛠 Funktionen

- 🎞️ **Intro-Videos umbenennen**  
  Entfernt automatisch Intro-Videos aus dem HLL-Verzeichnis (z. B. für schnelleres Spielstarten)

- 💾 **Backup erstellen**  
  Sichert alle `.ini`-Konfigurationsdateien aus deinem HLL-Profilordner (Grafik-, Eingabe- sowie Ausgabe Settings).
  Somit hast du nie wieder verlorene inGame Settings.

- ♻️ **Backup wiederherstellen**  
  Stellt deine vorherige Konfiguration mit einem Klick wieder her.

---

## 🚀 Verwendung

### Option 1: `.exe` ausführen

1. Lade `HLL_BackupVideoManager.exe` herunter
2. Doppelklick → GUI öffnet sich
3. Wähle eine Aktion aus
🆘Achtung!!!🆘
Es kann möglich sein das eure Firewall anschlägt da es nicht von Windows verifiziert ist.
Habt keine Angst den Code stelle ich euch gerne zur Verfügung.

### Option 2: `.bat` verwenden (falls `.exe` blockiert ist)

1. Stelle sicher, dass PowerShell erlaubt ist
   (`Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`)
2. Führe `start_backupvideomanager.bat` aus

---

## 📂 Wichtige Dateien

| Datei                              | Beschreibung                               |
|------------------------------------|--------------------------------------------|
| `HLL_BackupVideoManager.exe`		 | Hauptanwendung (GUI)                       |
| `start_backupvideopmanager.bat`     | Start über PowerShell                      |
| `HLL_BackupVideoManager.ps1`	   	 | Quellcode der Anwendung                    |
| `README.md`                        | Diese Anleitung                            |

---

## ℹ️ Info

> Ein Community-Tool von Fw.Schultz 
> Support: [@Fw.Schultz](https://discord.com/users/275297833970565121)

