<?php

require_once('Tinkerforge/IPConnection.php');
require_once('Tinkerforge/BrickletIndustrialAnalogOut.php');

use Tinkerforge\IPConnection;
use Tinkerforge\BrickletIndustrialAnalogOut;

const HOST = 'localhost';
const PORT = 4223;
const UID = 'XYZ'; // Change XYZ to the UID of your Industrial Analog Out Bricklet

$ipcon = new IPConnection(); // Create IP connection
$iao = new BrickletIndustrialAnalogOut(UID, $ipcon); // Create device object

$ipcon->connect(HOST, PORT); // Connect to brickd
// Don't use device before ipcon is connected

// Set output current to 4.5mA
$iao->setCurrent(4500);
$iao->enable();

echo "Press key to exit\n";
fgetc(fopen('php://stdin', 'r'));

$iao->disable();

$ipcon->disconnect();

?>
