function octave_example_simple_voltage()
    more off;

    HOST = "localhost";
    PORT = 4223;
    UID = "XYZ"; % Change to your UID

    ipcon = java_new("com.tinkerforge.IPConnection"); % Create IP connection
    iao = java_new("com.tinkerforge.BrickletIndustrialAnalogOut", UID, ipcon); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    % Set output voltage to 3.3V
    iao.setVoltage(3300);
    iao.enable();

    input("Press key to exit\n", "s");
    iao.disable();
    ipcon.disconnect();
end
