package main

import (
	"fmt"
	"github.com/tinkerforge/go-api-bindings/industrial_analog_out_bricklet"
	"github.com/tinkerforge/go-api-bindings/ipconnection"
)

const ADDR string = "localhost:4223"
const UID string = "XYZ" // Change XYZ to the UID of your Industrial Analog Out Bricklet.

func main() {
	ipcon := ipconnection.New()
	defer ipcon.Close()
	iao, _ := industrial_analog_out_bricklet.New(UID, &ipcon) // Create device object.

	ipcon.Connect(ADDR) // Connect to brickd.
	defer ipcon.Disconnect()
	// Don't use device before ipcon is connected.

	// Set output voltage to 3.3V
	iao.SetVoltage(3300)
	iao.Enable()

	fmt.Print("Press enter to exit.")
	fmt.Scanln()

	iao.Disable()
}
