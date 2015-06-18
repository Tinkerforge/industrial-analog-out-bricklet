#!/bin/sh
# connects to localhost:4223 by default, use --host and --port to change it

# change to your UID
uid=XYZ

# set a current of 4.5mA
tinkerforge call industrial-analog-out-bricklet $uid set-current 4500
tinkerforge call industrial-analog-out-bricklet $uid enable
