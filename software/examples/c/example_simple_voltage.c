#include <stdio.h>

#include "ip_connection.h"
#include "bricklet_industrial_analog_out.h"

#define HOST "localhost"
#define PORT 4223
#define UID "XYZ" // Change to your UID

int main() {
	// Create IP connection
	IPConnection ipcon;
	ipcon_create(&ipcon);

	// Create device object
	IndustrialAnalogOut ao;
	industrial_analog_out_create(&ao, UID, &ipcon);

	// Connect to brickd
	if(ipcon_connect(&ipcon, HOST, PORT) < 0) {
		fprintf(stderr, "Could not connect\n");
		exit(1);
	}
	// Don't use device before ipcon is connected

	// Set a voltage of 3.3V
	industrial_analog_out_set_voltage(&ao, 3300);
	industrial_analog_out_enable(&ao);

	printf("Press key to exit\n");
	getchar();
	ipcon_destroy(&ipcon); // Calls ipcon_disconnect internally
}
