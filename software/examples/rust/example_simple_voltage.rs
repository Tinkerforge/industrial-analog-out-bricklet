use std::{error::Error, io};

use tinkerforge::{industrial_analog_out_bricklet::*, ipconnection::IpConnection};

const HOST: &str = "127.0.0.1";
const PORT: u16 = 4223;
const UID: &str = "XYZ"; // Change XYZ to the UID of your Industrial Analog Out Bricklet

fn main() -> Result<(), Box<dyn Error>> {
    let ipcon = IpConnection::new(); // Create IP connection
    let industrial_analog_out_bricklet = IndustrialAnalogOutBricklet::new(UID, &ipcon); // Create device object

    ipcon.connect(HOST, PORT).recv()??; // Connect to brickd
                                        // Don't use device before ipcon is connected

    // Set output voltage to 3.3V
    industrial_analog_out_bricklet.set_voltage(3300);
    industrial_analog_out_bricklet.enable();

    println!("Press enter to exit.");
    let mut _input = String::new();
    io::stdin().read_line(&mut _input)?;
    industrial_analog_out_bricklet.disable();
    ipcon.disconnect();
    Ok(())
}
