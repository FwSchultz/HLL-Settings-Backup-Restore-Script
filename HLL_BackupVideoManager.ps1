# === HLL Backup & Video Manager (Videos-Button-Fix + rekursive Suche + Logo) ===

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$logoPath = "$PSScriptRoot\logo.png"
$BackupPath = "$env:USERPROFILE\AppData\Local\HLL\Saved\Config\WindowsNoEditor"
$BackupDir  = "$env:USERPROFILE\HLL_Backup"

function Create-Backup {
    if (!(Test-Path -Path $BackupDir)) {
        New-Item -ItemType Directory -Path $BackupDir | Out-Null
    }
    Get-ChildItem -Path $BackupPath -Filter *.ini | ForEach-Object {
        Copy-Item -Path $_.FullName -Destination $BackupDir -Force
    }
    [System.Windows.Forms.MessageBox]::Show("Backup erstellt unter: $BackupDir", "Erfolg")
}

function Restore-Backup {
    if (Test-Path -Path $BackupDir) {
        Get-ChildItem -Path $BackupDir -Filter *.ini | ForEach-Object {
            Copy-Item -Path $_.FullName -Destination $BackupPath -Force
        }
        [System.Windows.Forms.MessageBox]::Show("Backup wurde wiederhergestellt.", "Erfolg")
    } else {
        [System.Windows.Forms.MessageBox]::Show("Kein Backup gefunden!", "Fehler")
    }
}

function Find-HLLPath-Quick($rootPath) {
    $target = "steamapps\common\Hell Let Loose\HLL\Content\Movies"
    $maxDepth = 4

    function Search-Recursive($base, $depth) {
        if ($depth -gt $maxDepth) { return $null }

        try {
            $subdirs = Get-ChildItem -Path $base -Directory -ErrorAction Stop
        } catch {
            return $null
        }

        foreach ($dir in $subdirs) {
            $testPath = Join-Path $dir.FullName $target
            if (Test-Path $testPath) {
                return $testPath
            }

            $found = Search-Recursive -base $dir.FullName -depth ($depth + 1)
            if ($found) { return $found }
        }

        return $null
    }

    return Search-Recursive -base $rootPath -depth 0
}

function Try-RenameVideos($basePath) {
    $videoPath = Find-HLLPath-Quick $basePath
    if (-not $videoPath -or -not (Test-Path $videoPath)) {
        [System.Windows.Forms.MessageBox]::Show("Kein gültiger HLL-Pfad gefunden unter: $basePath", "Fehler")
        return
    }

    $count = 1
    Get-ChildItem -Path $videoPath -Filter *.mp4 | ForEach-Object {
        Rename-Item -Path $_.FullName -NewName ("video_{0}.mp4" -f $count)
        $count++
    }
    [System.Windows.Forms.MessageBox]::Show("Videos wurden erfolgreich umbenannt.", "Erfolg")
}

function Try-RenameVideosFromManualFolder {
    $dialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $dialog.Description = "Wähle den Ordner aus, der 'steamapps\\common\\Hell Let Loose\\HLL\\Content\\Movies' enthält"
    $dialog.ShowNewFolderButton = $false
    $result = $dialog.ShowDialog()

    if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
        $selectedPath = $dialog.SelectedPath
        $expectedPath = Join-Path $selectedPath "steamapps\common\Hell Let Loose\HLL\Content\Movies"
        if (Test-Path $expectedPath) {
            $count = 1
            Get-ChildItem -Path $expectedPath -Filter *.mp4 | ForEach-Object {
                Rename-Item -Path $_.FullName -NewName ("video_{0}.mp4" -f $count)
                $count++
            }
            [System.Windows.Forms.MessageBox]::Show("Videos wurden erfolgreich umbenannt.", "Erfolg")
        } else {
            [System.Windows.Forms.MessageBox]::Show("Pfad nicht gefunden: $expectedPath", "Fehler")
        }
    }
}

# GUI mit Logo + Buttons

$form = New-Object System.Windows.Forms.Form
$form.Text = "HLL Backup & Video Manager v2.0"
$form.Size = New-Object System.Drawing.Size(460, 360)
$form.StartPosition = "CenterScreen"
# $form.Topmost = $true


# Label
$label = New-Object System.Windows.Forms.Label
$label.Text = "Wähle eine Option aus:"
$label.Location = New-Object System.Drawing.Point(120, 20)
$label.Size = New-Object System.Drawing.Size(300, 30)
$form.Controls.Add($label)

# Buttons
$btnBackup = New-Object System.Windows.Forms.Button
$btnBackup.Text = "Backup erstellen"
$btnBackup.Location = New-Object System.Drawing.Point(70, 60)
$btnBackup.Size = New-Object System.Drawing.Size(150, 30)
$btnBackup.Add_Click({ Create-Backup })

$btnRestore = New-Object System.Windows.Forms.Button
$btnRestore.Text = "Backup wiederherstellen"
$btnRestore.Location = New-Object System.Drawing.Point(240, 60)
$btnRestore.Size = New-Object System.Drawing.Size(150, 30)
$btnRestore.Add_Click({ Restore-Backup })

$btnRename = New-Object System.Windows.Forms.Button
$btnRename.Text = "Videos umbenennen"
$btnRename.Location = New-Object System.Drawing.Point(70, 100)
$btnRename.Size = New-Object System.Drawing.Size(150, 30)
$btnRename.Add_Click({ Show-DriveSelection })

$btnExit = New-Object System.Windows.Forms.Button
$btnExit.Text = "Beenden"
$btnExit.Location = New-Object System.Drawing.Point(240, 100)
$btnExit.Size = New-Object System.Drawing.Size(150, 30)
$btnExit.Add_Click({ $form.Close() })

$form.Controls.AddRange(@($btnBackup, $btnRestore, $btnRename, $btnExit))
# Branding Label
$lblFooter = New-Object System.Windows.Forms.Label
$lblFooter.Text = "Ein Community-Tool von Fw.Schultz"
$lblFooter.TextAlign = "MiddleCenter"
$lblFooter.Location = New-Object System.Drawing.Point(80, 150)
$lblFooter.Size = New-Object System.Drawing.Size(300, 20)
$form.Controls.Add($lblFooter)

# Support-Link
$lblLink = New-Object System.Windows.Forms.Label
$lblLink.Text = "Discord-Support: @Fw.Schultz"
$lblLink.TextAlign = "MiddleCenter"
$lblLink.ForeColor = [System.Drawing.Color]::Blue
$lblLink.Location = New-Object System.Drawing.Point(140, 170)
$lblLink.Size = New-Object System.Drawing.Size(200, 20)
$lblLink.Cursor = 'Hand'
$lblLink.Add_Click({
    Start-Process "https://discord.com/users/275297833970565121"
})
$form.Controls.Add($lblLink)

function Show-DriveSelection {
    $subform = New-Object System.Windows.Forms.Form
    $subform.Text = "Laufwerk auswählen oder Ordner manuell wählen"
    $subform.Size = New-Object System.Drawing.Size(420, 460)
    $subform.StartPosition = "CenterScreen"

    $hintLabel = New-Object System.Windows.Forms.Label
    $hintLabel.Text = "Bitte gib den Laufwerksbuchstaben an, wo du HLL installiert hast!"
    $hintLabel.Location = New-Object System.Drawing.Point(20, 20)
    $hintLabel.Size = New-Object System.Drawing.Size(380, 30)
    $subform.Controls.Add($hintLabel)

    $drives = @("C:\", "D:\", "E:\", "F:\")
    $y = 60
    foreach ($d in $drives) {
        $btn = New-Object System.Windows.Forms.Button
        $btn.Text = "$d durchsuchen nach HLL-Movies"
        $btn.Location = New-Object System.Drawing.Point(60, $y)
        $btn.Size = New-Object System.Drawing.Size(280, 30)
        $btn.Add_Click([scriptblock]::Create("Try-RenameVideos -basePath '$d'; `$subform.Close()"))
        $subform.Controls.Add($btn)
        $y += 40
    }

    $btnCustom = New-Object System.Windows.Forms.Button
    $btnCustom.Text = "Ordner manuell auswählen"
    $customY = $y + 10
    $btnCustom.Location = New-Object System.Drawing.Point(60, $customY)
    $btnCustom.Size = New-Object System.Drawing.Size(280, 30)
    $btnCustom.Add_Click({
        Try-RenameVideosFromManualFolder
        $subform.Close()
    })
    $subform.Controls.Add($btnCustom)

    $subform.ShowDialog()
}

[void]$form.ShowDialog()
