using Tinkerforge;

class Example
{
	private static string HOST = "localhost";
	private static int PORT = 4223;
	private static string UID = "XYZ"; // Change to your UID

	static void Main()
	{
		IPConnection ipcon = new IPConnection(); // Create IP connection
		BrickletIndustrialAnalogOut iao = new BrickletIndustrialAnalogOut(UID, ipcon); // Create device object

		ipcon.Connect(HOST, PORT); // Connect to brickd
		// Don't use device before ipcon is connected

		// Set output voltage to 3.3V
		iao.SetVoltage(3300);
		iao.Enable();

		System.Console.WriteLine("Press enter to exit");
		System.Console.ReadLine();
		iao.Disable();
		ipcon.Disconnect();
	}
}
