reading = brick.TouchPressed(1);
display(reading);

while 1
    touch = brick.TouchPressed(1); % Read a touch sensor connected to port 1.
    if touch
        brick.StopAllMotors('Brake');     % Beep if the sensor was touched.
        break;            % End program
    end
end