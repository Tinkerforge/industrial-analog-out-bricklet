#!/usr/bin/env python
# -*- coding: utf-8 -*-  

HOST = "localhost"
PORT = 4223
UID = "XYZ" # Change to your UID

from tinkerforge.ip_connection import IPConnection
from tinkerforge.bricklet_industrial_analog_out import IndustrialAnalogOut

if __name__ == "__main__":
    ipcon = IPConnection() # Create IP connection
    iao = IndustrialAnalogOut(UID, ipcon) # Create device object

    ipcon.connect(HOST, PORT) # Connect to brickd
    # Don't use device before ipcon is connected

    iao.enable()

    # Set output current of 5mA
    iao.set_current(5000)

    raw_input('Press key to exit\n') # Use input() in Python 3
    ipcon.disconnect()
