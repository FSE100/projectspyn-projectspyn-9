brick.SetColorMode(3, 2);  % Set Color Sensor connected to Port 1 to Color Code Mode


 
distance = brick.UltrasonicDist(2);
display(distance);
color = brick.ColorCode(3);  % Get Color on port 1.
    display(color);


while distance >= 155
    distance = brick.UltrasonicDist(2);
    display(distance);
    
    
    brick.MoveMotor('AB', 20);     % Motor A forward at half speed.
    pause(1); 
    color = brick.ColorCode(3);  % Get Color on port 1.
    display(color);
    if color == 5
        brick.StopAllMotors('Brake');
             pause(4);
        brick.MoveMotor('AB', 20);
    elseif color == 3
        brick.StopAllMotors('Brake');
             pause(4);
        brick.MoveMotor('AB', 20);
    elseif color == 4
        brick.StopAllMotors('Brake');
             pause(4);
        brick.MoveMotor('AB', 20);
    end
    
    if distance < 155
      brick.StopAllMotors('Brake');
    end
    
end





    