
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

