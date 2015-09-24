#!/usr/bin/perl

use Tinkerforge::IPConnection;
use Tinkerforge::BrickletIndustrialAnalogOut;

use constant HOST => 'localhost';
use constant PORT => 4223;
use constant UID => 'XYZ'; # Change to your UID

my $ipcon = Tinkerforge::IPConnection->new(); # Create IP connection
my $iao = Tinkerforge::BrickletIndustrialAnalogOut->new(&UID, $ipcon); # Create device object

$ipcon->connect(&HOST, &PORT); # Connect to brickd
# Don't use device before ipcon is connected

# Set output current to 4.5mA
$iao->set_current(4500);
$iao->enable();

print "Press key to exit\n";
<STDIN>;
$iao->disable();
$ipcon->disconnect();
