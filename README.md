# SmartHome
SmartHome project. Give intelligence to your life !

This project is used to collect information in your calendars (Ical, Google calendar, CalDav) and make ring your alarm (Rapsberry pi, Arduino) at the specified hours in your calendar.

## Server project
The server project can be found [here](https://github.com/alexgus/SmartHome-Server "Server project")

## Clock project
The clock project can be found [here](https://github.com/alexgus/SmartHome-Clock "Clock project")

# Quick Start
## Installation
### Prerequisite
Make sure :
 * you have valid build environement (includes, etc) otherwise install the corresponding package for your distribution (ubuntu : build-essential ; archlinux : base-devel ; etc)
 * to have a JDK installed
 * to have maven3 installed
 * mosquitto (or other MQTT server) installed anywhere
 * cron is running on your machine (needed for the server only)
 * libssl-devel is installed (needed for the clock only)

### Compile
Compile the entire project with `install-all.sh` script.
Compile the clock project with `install-clock.sh` script.
Compile the server project with `install-server.sh` script.

For uninstalling just run the corresponding script you installed.

For more precision about dependencies script will install, refer to each `Readme.md` on git repository.
