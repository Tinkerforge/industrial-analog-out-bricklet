function octave_example_simple_current()
    more off;

    HOST = "localhost";
    PORT = 4223;
    UID = "XYZ"; % Change XYZ to the UID of your Industrial Analog Out Bricklet

    ipcon = javaObject("com.tinkerforge.IPConnection"); % Create IP connection
    iao = javaObject("com.tinkerforge.BrickletIndustrialAnalogOut", UID, ipcon); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    % Set output current to 4.5mA
    iao.setCurrent(4500);
    iao.enable();

    input("Press key to exit\n", "s");

    iao.disable();

    ipcon.disconnect();
end
