# Herramienta de Extracción Automatizada de Archivos

Herramienta por lotes (.bat) para extraer automáticamente archivos comprimidos (.7z, .zip, .rar) y eliminarlos después de una extracción exitosa.

## Características Principales

- ✔ Extracción automática de múltiples formatos (.7z, .zip, .rar)
- ✔ Eliminación segura de archivos tras la extracción
- ✔ Diagnóstico detallado del proceso
- ✔ Compatible con 7-Zip y WinRAR
- ✔ Carpeta de salida organizada

## Requisitos

- Tener instalado 7-Zip
- Tener instalado WinRAR

## Instalación

1. Descarga el script extraer_archivos.bat
2. Colócalo en la carpeta con tus archivos comprimidos

## Uso

1. Ejecuta el archivo .bat haciendo doble clic
2. El script:
   - Creará una carpeta llamada 'Extrated_files'
   - Extraerá todos los archivos compatibles
   - Eliminará los originales tras extraerlos correctamente
3. Revisa los mensajes en pantalla para ver el progreso

## Personalización

Edita estas variables al comienzo del script si es necesario:

set "sevenzip=C:\Program Files\7-Zip\7z.exe"
set "winrar=C:\Program Files\WinRAR\WinRAR.exe"
set "carpeta_destino=extraidos"

## Solución de Problemas

Si el script no funciona:

1. Verifica que 7-Zip y WinRAR estén instalados y que las rutas sean correctas
2. Ejecuta el script como Administrador por si hay problemas de permisos
