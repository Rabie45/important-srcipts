#!/bin/bash

choice=$(echo -e "Logout\nSuspend\nShutdown\nReboot" | dmenu -p "Please select:")

if [ ${choice} = "Logout" ];then
gnome-session-quit 
elif [ ${choice} = "Shutdown" ];then
sudo shutdown now
elif [ ${choice} = "Reboot" ];then
sudo reboot now 
elif [ ${choice} = "Suspend" ];then
sudo systemctl suspend
fi
