#!/bin/sh
# Connects to localhost:4223 by default, use --host and --port to change this

uid=XYZ # Change XYZ to the UID of your Industrial Analog Out Bricklet

# Set output voltage to 3.3V
tinkerforge call industrial-analog-out-bricklet $uid set-voltage 3300
tinkerforge call industrial-analog-out-bricklet $uid enable

echo "Press key to exit"; read dummy

tinkerforge call industrial-analog-out-bricklet $uid disable
