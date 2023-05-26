# ==================================================================================================================
# Project: Data Explorer
# Pass-ID: X9448776
# Author: Atakan Çetinkaya
# Created: 24.05.2023
# Description: This ".ps1" (powershell_dateiexplorer.ps1) This PowerShell-Script is to find Logs and Files easily
# File Name: powershell_dateiexplorer.ps1
# Version: v1.0
# Last Date Version edit: 24.05.2023
# ==================================================================================================================

# Eingabeaufforderung für den Benutzer, um das zu durchsuchende Verzeichnis zu wählen
$selectedPath = Read-Host "Geben Sie den Pfad zum Verzeichnis ein, das Sie durchsuchen möchten:"

# Funktion zum Exportieren der Dateiliste in eine CSV-Datei
function Export-FileListToCsv {
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string]$Path,
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string]$OutputFile
    )

    $files = Get-ChildItem -Path $Path -File

    $files | Export-Csv -Path $OutputFile -NoTypeInformation
}

# Funktion zum Exportieren der Dateiliste in eine XML-Datei
function Export-FileListToXml {
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string]$Path,
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string]$OutputFile
    )

    $files = Get-ChildItem -Path $Path -File

    $files | Export-Clixml -Path $OutputFile
}

if (Test-Path $selectedPath) {
    $files = Get-ChildItem -Path $selectedPath

    Write-Host "Dateien und Verzeichnisse im ausgewählten Verzeichnis ($selectedPath):"
    Write-Host "----------------------"

    foreach ($file in $files) {
        Write-Host $file.Name
    }

    Write-Host "----------------------"

    $option = Read-Host "Bitte geben Sie die gewünschte Option ein (1-4):"
    
    switch ($option) {
        1 {
            $logFiles = Get-ChildItem -Path $selectedPath -Filter "*.log" -File
            Write-Host "Log-Dateien im ausgewählten Verzeichnis ($selectedPath):"
            Write-Host "----------------------"
            foreach ($logFile in $logFiles) {
                Write-Host $logFile.Name
            }
            Write-Host "----------------------"
        }
        2 {
            $operatingSystem = Get-WmiObject -Class Win32_OperatingSystem
            $hardware = Get-WmiObject -Class Win32_ComputerSystem

            Write-Host "Betriebssysteminformationen:"
            Write-Host "----------------------"
            Write-Host "Name: $($operatingSystem.Name)"
            Write-Host "Version: $($operatingSystem.Version)"
            Write-Host "BuildNumber: $($operatingSystem.BuildNumber)"
            Write-Host "----------------------"

            Write-Host "Hardwareinformationen:"
            Write-Host "----------------------"
            Write-Host "Hersteller: $($hardware.Manufacturer)"
            Write-Host "Modell: $($hardware.Model)"
            Write-Host "Anzahl der Prozessoren: $($hardware.NumberOfProcessors)"
            Write-Host "----------------------"
        }
    }

    $exportOption = Read-Host "Möchten Sie die Dateiliste exportieren? (J/N)"
    if ($exportOption -eq "J") {
        $exportFormat = Read-Host "Bitte geben Sie das Exportformat ein (CSV/XML):"
        $outputFile = Read-Host "Bitte geben Sie den Dateinamen für die exportierte Datei an:"
        $outputPath = Join-Path -Path $selectedPath -ChildPath $outputFile

        switch ($exportFormat) {
            "CSV" {
                Export-FileListToCsv -Path $selectedPath -OutputFile $outputPath
            }
            "XML" {
                Export-FileListToXml -Path $selectedPath -OutputFile $outputPath
            }
            default {
                Write-Host "Ungültiges Exportformat. Export abgebrochen."
            }
        }
    }
}
else {
    Write-Host "Der angegebene Pfad ist ungültig oder existiert nicht."
}
