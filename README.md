# SmartHome
SmartHome project. Give intelligence to your life !

This project is used to collect information in your calendars (Ical, Google calendar, CalDav) and make ring your alarm (Rapsberry pi, Arduino) at the specified hours in your calendar.

## Server project
The server project can be found [here](https://github.com/alexgus/SmartHome-Server "Server project")

## Clock project
The clock project can be found [here](https://github.com/alexgus/SmartHome-Clock "Clock project")

# Quick Start
## Installation
 * Make sure you have valid build environement (includes, etc) otherwise install the corresponding package for your distribution (ubuntu : build-essential ; archlinux : base-devel ; etc)
 * Make sure to have a JDK installed
 * Make sure to have maven3 installed
 * Mosquitto (or other MQTT server) installed on your host.
 * Make sure cron is running on your machine
 * Compile and launch the project with `install-all.sh` script
