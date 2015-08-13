#!/bin/bash 

echo ""
echo " >> Uninstall SmartHome-Server"
echo "*****************************"
rm SmartHome-Server -Rf
sudo rm /opt/SmartHome/SmartHome-Server -Rf
sudo rm /usr/bin/SmartHome-Server
