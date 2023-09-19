# Bluetooth Death Script

Este script en Bash permite realizar pruebas de ataque de ping a dispositivos Bluetooth dentro de tu alcance. 

El script utiliza diferentes comandos y herramientas, como `rfkill`, `hcitool`, y `l2ping`, para desbloquear dispositivos Bluetooth, escanear dispositivos cercanos, y realizar ataques de ping a dispositivos específicos.

## Requisitos

Para ejecutar este script, necesitarás:

- Un sistema operativo Linux que admita las herramientas y comandos utilizados (por ejemplo, Ubuntu, Debian, etc.).
- Privilegios de superusuario (root) o acceso de administrador para ejecutar comandos con `sudo`.

Asegúrate de tener instaladas las herramientas necesarias antes de ejecutar el script.

1. sudo apt update

2. sudo apt install rfkill

3. sudo apt install bluez-utils
 
4. sudo apt install bluez

## Uso

1. Clona este repositorio en tu máquina local o descarga el archivo del script `bluetooth_death.sh`.

2. Abre una terminal y navega hasta el directorio donde guardaste el script.

3. Ejecuta el script con:

    - chmod +x bluetooth_death.sh
    - bash ./bluetooth_death.sh
