function matlab_example_simple_current()
    import com.tinkerforge.IPConnection;
    import com.tinkerforge.BrickletIndustrialAnalogOut;

    HOST = 'localhost';
    PORT = 4223;
    UID = 'XYZ'; % Change XYZ to the UID of your Industrial Analog Out Bricklet

    ipcon = IPConnection(); % Create IP connection
    iao = handle(BrickletIndustrialAnalogOut(UID, ipcon), 'CallbackProperties'); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    % Set output current to 4.5mA
    iao.setCurrent(4500);
    iao.enable();

    input('Press key to exit\n', 's');

    iao.disable();

    ipcon.disconnect();
end
