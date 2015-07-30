import com.tinkerforge.IPConnection;
import com.tinkerforge.BrickletIndustrialAnalogOut;

public class ExampleSimpleVoltage {
	private static final String HOST = "localhost";
	private static final int PORT = 4223;
	private static final String UID = "XYZ"; // Change to your UID

	// Note: To make the example code cleaner we do not handle exceptions. Exceptions you
	//       might normally want to catch are described in the documentation
	public static void main(String args[]) throws Exception {
		IPConnection ipcon = new IPConnection(); // Create IP connection
		BrickletIndustrialAnalogOut iao = new BrickletIndustrialAnalogOut(UID, ipcon); // Create device object

		ipcon.connect(HOST, PORT); // Connect to brickd
		// Don't use device before ipcon is connected

		// Set output voltage to 3.3V
		iao.setVoltage(3300);
		iao.enable();

		System.out.println("Press key to exit"); System.in.read();
		iao.disable();
		ipcon.disconnect();
	}
}
