function octave_example_simple_current()
    more off;

    HOST = "localhost";
    PORT = 4223;
    UID = "brY"; % Change to your UID

    ipcon = java_new("com.tinkerforge.IPConnection"); % Create IP connection
    ao = java_new("com.tinkerforge.BrickletIndustrialAnalogOut", UID, ipcon); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    % Set output current to 4.5mA
    ao.setCurrent(4500);
    ao.enable();

    input("Press any key to exit...\n", "s");
    ipcon.disconnect();
end
