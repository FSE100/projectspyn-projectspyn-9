distance = brick.UltrasonicDist(2);
display(distance);
while distance > 55       
    brick.MoveMotor('A', 50.5);
     brick.MoveMotor('D', 50);
     pause(2); 
    distance = brick.UltrasonicDist(2);
     display(distance);
     brick.StopMotor('AD');
     pause(1);
     distance = brick.UltrasonicDist(2);
     display(distance);
     Testturning;
     color = brick.ColorCode(3); 
    display(color);
    if color == 5 || color == 3 || color == 4
    Testcolor;
    end
    
end
if distance < 35 
    brick.StopAllMotors('Brake');
    Testturning;
elseif reading == 1
            touchDemo;
end