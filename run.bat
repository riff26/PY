@echo off

REM Jalankan skrip Python
python src/run.py

REM Periksa apakah keluaran skrip Python adalah kesalahan
IF %ERRORLEVEL% NEQ 0 (
    REM Jika ada kesalahan, instal dependensi menggunakan pip
    pip install -r requirements.txt
    python src/run.py
)

PAUSE