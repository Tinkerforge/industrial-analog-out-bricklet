#!/usr/bin/perl

use Tinkerforge::IPConnection;
use Tinkerforge::BrickletIndustrialAnalogOut;

use constant HOST => 'localhost';
use constant PORT => 4223;
use constant UID => 'XYZ'; # Change XYZ to the UID of your Industrial Analog Out Bricklet

my $ipcon = Tinkerforge::IPConnection->new(); # Create IP connection
my $iao = Tinkerforge::BrickletIndustrialAnalogOut->new(&UID, $ipcon); # Create device object

$ipcon->connect(&HOST, &PORT); # Connect to brickd
# Don't use device before ipcon is connected

# Set output voltage to 3.3V
$iao->set_voltage(3300);
$iao->enable();

print "Press key to exit\n";
<STDIN>;
$iao->disable();
$ipcon->disconnect();
