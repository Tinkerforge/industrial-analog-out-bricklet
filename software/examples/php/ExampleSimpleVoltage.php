<?php

require_once('Tinkerforge/IPConnection.php');
require_once('Tinkerforge/BrickletIndustrialAnalogOut.php');

use Tinkerforge\IPConnection;
use Tinkerforge\BrickletIndustrialAnalogOut;

const HOST = 'localhost';
const PORT = 4223;
const UID = 'XYZ'; // Change to your UID

$ipcon = new IPConnection(); // Create IP connection
$ao = new BrickletIndustrialAnalogOut(UID, $ipcon); // Create device object

$ipcon->connect(HOST, PORT); // Connect to brickd
// Don't use device before ipcon is connected

// Set output voltage to 3.3V
$ao->setVoltage(3300);
$ao->enable();

echo "Press key to exit\n";
fgetc(fopen('php://stdin', 'r'));
$ipcon->disconnect();

?>