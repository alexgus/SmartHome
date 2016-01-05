#!/bin/bash

echo ""
echo " >> Install lib paho for MQTT"
echo "*****************************"
git clone http://git.eclipse.org/gitroot/paho/org.eclipse.paho.mqtt.c.git
cd org.eclipse.paho.mqtt.c
sudo make install
cd ..

echo ""
echo " >> Install lib wiring pi"
echo "*****************************"
git clone https://github.com/WiringPi/WiringPi.git
cd WiringPi
./build
cd ..

echo ""
echo " >> Install SmartHome-Clock"
echo "*****************************"
git clone https://github.com/alexgus/SmartHome-Clock.git
cd SmartHome-Clock/src/
mkdir lib
cd lib
git clone https://github.com/nlohmann/json.git
cp json/src/json.hpp .
rm -Rf json
cd ../../Debug
make
cd ../..
cp SmartHome-Clock/Debug/SmartHome-Clock ./tmp
cp SmartHome-Clock/conf.json .

echo ""
echo " >> Clean"
echo "*****************************"
sudo rm org.eclipse.paho.mqtt.c -Rf
sudo rm SmartHome-* -Rf
sudo rm wiringPi -Rf
mv ./tmp ./SmartHome-Clock
