# Ferramenta de Extracción Automatizada de Arquivos

Ferramenta en lotes (.bat) para extraer automaticamente arquivos comprimidos (.7z, .zip, .rar) e eliminalos despois dunha extracción exitosa.

# Características Principais

- ✔ Extracción automática de múltiples formatos (.7z, .zip, .rar)
- ✔ Eliminación segura de arquivos despois de extraer
- ✔ Diagnóstico detallado do proceso
- ✔ Compatible con 7-Zip e WinRAR
- ✔ Cartafol de saída organizado

## Requisitos

- 7-Zip instalado
- WinRAR instalado

## Instalación

1. Descarga o script extraer_archivos.bat
2. Colócao no cartafol cos teus arquivos comprimidos

## Uso

1. Executa o arquivo .bat facendo dobre clic
2. O script:
   - Creará un cartafol 'extraidos'
   - Extraerá todos os arquivos compatibles
   - Eliminará os orixinais tras extraelos correctamente
3. Revisa as mensaxes en pantalla para ver o progreso

## Personalización

Edita estas variables ao comezo do script se é necesario:

set "sevenzip=C:\Program Files\7-Zip\7z.exe"
set "winrar=C:\Program Files\WinRAR\WinRAR.exe"
set "carpeta_destino=extraidos"

## Solución de Problemas

Se o script non funciona:

1. Comproba que 7-Zip/WinRAR estean instalados e que as rutas de onde estean instalados sexan correctas
2. Executa como Administrador o script por se hai problemas de permisos
