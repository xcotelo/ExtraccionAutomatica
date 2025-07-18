@echo off
setlocal enabledelayedexpansion

:: Configuración das rutas dos executables (por defecto, evidentemente)
set "sevenzip=C:\Program Files\7-Zip\7z.exe"
set "winrar=C:\Program Files\WinRAR\WinRAR.exe"

:: Usar o directorio actual onde se executa o script
set "carpeta=%~dp0"
set "destino=%carpeta%Extrated_files"

if not exist "%sevenzip%" (
    echo 7-Zip not found at: %sevenzip%
    set "sevenzip="
)
if not exist "%winrar%" (
    echo WinRAR not found at: %winrar%
    set "winrar="
)

if not defined sevenzip if not defined winrar (
    echo ERROR: Neither 7-Zip nor WinRAR found
    pause
    exit /b 1
)

:: Crear cartafol de destino se non existe
if not exist "%destino%" (
    mkdir "%destino%"
)

echo Working directory: %carpeta%
echo Destination folder: %destino%
echo.

set "archivos_extraidos=0"

:: Extraer ficheiros .7z, .zip e .rar
for %%X in (".7z" ".zip" ".rar") do (
    if "%%~X"==".rar" (
        if defined winrar (
            echo Searching for *%%~X files...
            for %%f in ("%carpeta%\*%%~X") do (
                echo Extracting: %%~nxf...
                "%winrar%" x -ibck -y "%%f" "%destino%"
                if !errorlevel! == 0 (
                    echo Extraction successful. Deleting: %%~nxf
                    del "%%f"
                    set /a "archivos_extraidos+=1"
                ) else (
                    echo ERROR extracting %%~nxf
                )
                echo.
            )
        )
    ) else (
        if defined sevenzip (
            echo Searching for *%%~X files...
            for %%f in ("%carpeta%\*%%~X") do (
                echo Extracting: %%~nxf...
                "%sevenzip%" x "%%f" -o"%destino%" -y
                if !errorlevel! == 0 (
                    echo Extraction successful. Deleting: %%~nxf
                    del "%%f"
                    set /a "archivos_extraidos+=1"
                ) else (
                    echo ERROR extracting %%~nxf
                )
                echo.
            )
        )
    )
)


if %archivos_extraidos% == 0 (
    echo No extractable files found (.7z, .zip or .rar)
) else (
    echo Successfully extracted %archivos_extraidos% files
)

echo ==== PROCESS COMPLETED ====
pause
