function matlab_example_simple_current()
    import com.tinkerforge.IPConnection;
    import com.tinkerforge.BrickletIndustrialAnalogOut;

    HOST = 'localhost';
    PORT = 4223;
    UID = 'XYZ'; % Change to your UID

    ipcon = IPConnection(); % Create IP connection
    iao = BrickletIndustrialAnalogOut(UID, ipcon); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    % Set output current to 4.5mA
    iao.setCurrent(4500);
    iao.enable();

    input('Press key to exit\n', 's');
    iao.disable();
    ipcon.disconnect();
end
