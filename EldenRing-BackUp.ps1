#Autor: DarkKerous
#VERSIÓN: 0.1.2

#Nombre de usuario
$v_UserName = (Get-WmiObject -Class Win32_ComputerSystem).UserName.Split('\')[1]

# Rutas de origen y destino
$rutaEldenRing = "C:\Users\$v_UserName\AppData\Roaming\EldenRing"

    ## Obtener carpeta de escritorio
    $desktopPath = [System.IO.Path]::Combine($env:USERPROFILE, 'Desktop')

$rutaBackUp = "$desktopPath\Elden_Ring-BackUp"

#Pedir al uisuario ingresar una opción
Write-Output "¿Qué de sea hacer?"
Write-Output "1- Backup"
Write-Output "2- Restore"

#Leer respuesta del usuario
$opcion = Read-Host "Ingrese el número de su elección"

#Usar switch para manejar las opciones
switch ($opcion) {
    1 {
        Write-Output "Se hara el Backup."
        
            # Verificar si la carpeta de destino existe, si no, crearla
            if (-not (Test-Path -Path $$rutaBackUp)) {
                New-Item -ItemType Directory -Path $rutaBackUp | Out-Null
            }

            # Copiar archivos y carpetas desde la ruta de origen a la de destino
            Copy-Item -Recurse -Path $rutaEldenRing -Destination $rutaBackUp
            Write-Host "Copia de seguridad de Elden Ring completada."
    }
    2 {
        Write-Output "Se hara el Restore."
        #Código para el Restore
    }
    default {
        Write-Output "Opción no válida. Por favor, ingrese 1 o 2."
    }
}