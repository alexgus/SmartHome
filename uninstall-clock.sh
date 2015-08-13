#!/bin/bash

echo ""
echo " >> Uninstall lib paho for MQTT"
echo "*****************************"
git clone http://git.eclipse.org/gitroot/paho/org.eclipse.paho.mqtt.c.git
cd org.eclipse.paho.mqtt.c
sudo make uninstall
cd ..
sudo rm org.eclipse.paho.mqtt.c -Rf

echo ""
echo " >> Uninstall SmartHome-Clock"
echo "*****************************"
rm SmartHome-Clock -Rf
sudo rm -f /usr/bin/SmartHome-Clock
