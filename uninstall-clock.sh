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
echo " >> Uninstall wiringPi"
echo "*****************************"
git clone git://git.drogon.net/wiringPi
cd wiringPi/wiringPi
sudo make uninstall
cd ../..
sudo rm wiringPi -Rf

echo ""
echo " >> Uninstall SmartHome-Clock"
echo "*****************************"
rm SmartHome-Clock -Rf
sudo rm -f SmartHome-Clock
sudo rm -f conf.json
