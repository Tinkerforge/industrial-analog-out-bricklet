use std::{io, error::Error};

use tinkerforge::{ip_connection::IpConnection, 
                  industrial_analog_out_bricklet::*};


const HOST: &str = "localhost";
const PORT: u16 = 4223;
const UID: &str = "XYZ"; // Change XYZ to the UID of your Industrial Analog Out Bricklet.

fn main() -> Result<(), Box<dyn Error>> {
    let ipcon = IpConnection::new(); // Create IP connection.
    let iao = IndustrialAnalogOutBricklet::new(UID, &ipcon); // Create device object.

    ipcon.connect((HOST, PORT)).recv()??; // Connect to brickd.
    // Don't use device before ipcon is connected.

		// Set output current to 4.5mA
		iao.set_current(4500);
		iao.enable();

    println!("Press enter to exit.");
    let mut _input = String::new();
    io::stdin().read_line(&mut _input)?;
		iao.disable();
    ipcon.disconnect();
    Ok(())
}
