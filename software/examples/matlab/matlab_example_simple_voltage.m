function matlab_example_simple_voltage()
    import com.tinkerforge.IPConnection;
    import com.tinkerforge.BrickletIndustrialAnalogOut;

    HOST = 'localhost';
    PORT = 4223;
    UID = 'XYZ'; % Change to your UID

    ipcon = IPConnection(); % Create IP connection
    iao = BrickletIndustrialAnalogOut(UID, ipcon); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    % Set output voltage to 3.3V
    iao.setVoltage(3300);
    iao.enable();

    input('Press key to exit\n', 's');
    iao.disable();
    ipcon.disconnect();
end
