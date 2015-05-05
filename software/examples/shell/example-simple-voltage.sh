#!/bin/sh
# connects to localhost:4223 by default, use --host and --port to change it

# change to your UID
uid=XYZ

# set a voltage of 3.3V
tinkerforge call industrial-analog-out-bricklet $uid set-voltage 3300
