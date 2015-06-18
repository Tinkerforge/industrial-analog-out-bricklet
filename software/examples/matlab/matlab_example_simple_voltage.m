function matlab_example_simple()
    import com.tinkerforge.IPConnection;
    import com.tinkerforge.BrickletIndustrialAnalogOut;

    HOST = 'localhost';
    PORT = 4223;
    UID = 'brY'; % Change to your UID

    ipcon = IPConnection(); % Create IP connection
    ao = BrickletIndustrialAnalogOut(UID, ipcon); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    % Set output voltage to 3.3V
    ao.setVoltage(3300);
    ao.enable();

    input('Press any key to exit...\n', 's');
    ipcon.disconnect();
end
