# Definisikan variabel
$path = "C:\hdfs\data\data1"
$name_of_directory = "data1"

# Cek apakah direktori ada
if (Test-Path -Path $path -PathType Container) {
    Write-Host "There is $name_of_directory Directory Exists!"
} else {
    Write-Host "$name_of_directory Directory Not Exists!"

    # Buat direktori jika tidak ada
    New-Item -Path $path -ItemType Directory
}

# Tambahkan tugas jadwal (cron job) untuk menjalankan skrip setiap hari pukul 07:00 AM
$trigger = New-ScheduledTaskTrigger -Daily -At "07:00"
$action = New-ScheduledTaskAction -Execute 'PowerShell' -Argument 'C:\Users\Nishafa\Documents\HelloWorld.ps1'
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "CheckDirectoryTask" -User "Nishafa" -Password "admin"
