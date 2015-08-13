#!/bin/bash

echo ""
echo " >> Install SmartHome-Server"
echo "*****************************"
git clone https://github.com/alexgus/SmartHome-Server.git
cd SmartHome-Server
mv pom.xml pom-eclipse.xml
mv pom-standalone.xml pom.xml
mvn install
sudo mkdir -p /opt/SmartHome
sudo mkdir -p /opt/SmartHome/SmartHome-Server
sudo mkdir -p /opt/SmartHome/SmartHome-Server/lib
sudo cp -Rf ./target/lib/* /opt/SmartHome/SmartHome-Server/lib/
sudo cp ./target/smarthome-*.jar /opt/SmartHome/SmartHome-Server/
sudo cp ./smart.conf /opt/SmartHome/SmartHome-Server/
sudo sh -c 'echo "cd /opt/SmartHome/SmartHome-Server/ && java -jar smarthome-*.jar" >> /opt/SmartHome/SmartHome-Server/SmartHome-Server'
sudo chmod +x /opt/SmartHome/SmartHome-Server/SmartHome-Server
sudo ln -s /opt/SmartHome/SmartHome-Server/SmartHome-Server /usr/bin/SmartHome-Server
cd ..

echo ""
echo " >> Clean"
echo "*****************************"
sudo rm SmartHome-* -Rf
