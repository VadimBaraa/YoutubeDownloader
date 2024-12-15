$ErrorActionPreference = "Stop"
$sourcePath = "$PSScriptRoot/ffmpeg.exe"
$ffmpegFilePath = "$PSScriptRoot/ffmpeg.exe"  # ��������� ����, ���� ����� ����������� ffmpeg.exe

# ���������, ���������� �� ffmpeg.exe � ����� �� ��������
if (-not (Test-Path $sourcePath)) {
    Write-Host "���� ffmpeg.exe �� ������ � ����� �� ��������."
    exit
}

# ���������, ���������� �� ��� ���� � �������� ����� ����������
if (Test-Path $ffmpegFilePath) {
    Write-Host "Skipped copying FFmpeg, file already exists."
    exit
}

# �������� ����
Copy-Item -Path $sourcePath -Destination $ffmpegFilePath -Force

Write-Host "���� ffmpeg.exe ������� ����������."