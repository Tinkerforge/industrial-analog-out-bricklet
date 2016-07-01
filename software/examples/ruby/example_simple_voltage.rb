#!/usr/bin/env ruby
# -*- ruby encoding: utf-8 -*-

require 'tinkerforge/ip_connection'
require 'tinkerforge/bricklet_industrial_analog_out'

include Tinkerforge

HOST = 'localhost'
PORT = 4223
UID = 'XYZ' # Change XYZ to the UID of your Industrial Analog Out Bricklet

ipcon = IPConnection.new # Create IP connection
iao = BrickletIndustrialAnalogOut.new UID, ipcon # Create device object

ipcon.connect HOST, PORT # Connect to brickd
# Don't use device before ipcon is connected

# Set output voltage to 3.3V
iao.set_voltage 3300
iao.enable

puts 'Press key to exit'
$stdin.gets
iao.disable
ipcon.disconnect
