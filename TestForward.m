distance = brick.UltrasonicDist(2);
display(distance);
while distance > 35       
    brick.MoveMotor('A', 40.5);
     brick.MoveMotor('D', 40);
     pause(1.2); 
    distance = brick.UltrasonicDist(2);
     display(distance);
     brick.StopMotor('AD');
     pause(1);
     distance = brick.UltrasonicDist(2);
     display(distance);
     Testturning;
     brick.SetColorMode(3, 2);
     color = brick.ColorCode(3); 
    display(color);
    if color == 5 || color == 3 || color ==2
               Testturning; 
    end
    
end
if distance < 35 
    brick.StopAllMotors('Brake');
    Testturning;
elseif reading == 1
            touchDemo;
end
