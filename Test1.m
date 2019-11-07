

 
distance = brick.UltrasonicDist(2);
display(distance);


while distance >= 630
    distance = brick.UltrasonicDist(2);
    display(distance);
    
    
    brick.MoveMotor('AD', 30);     % Motor A forward at half speed.
    pause(1); 
    color = brick.ColorCode(3);  % Get Color on port 1.
    display(color);
    if color == 5
        brick.StopAllMotors('Brake');
             pause(4);
        brick.MoveMotor('AD', 30);
    elseif color == 3
        brick.StopAllMotors('Brake');
             pause(4);
        brick.MoveMotor('AD', 30);
    elseif color == 4
        brick.StopAllMotors('Brake');
             pause(4);
        brick.MoveMotor('AD', 30);
    end
    
    
    if distance < 500
      brick.StopAllMotors('Brake');
    end
end 
   

    if distance > 500
         brick.MoveMotor('A', -25);
         brick.MoveMotor('D', 25);
         pause(5);
         leftdistance = brick.UltrasonicDist(2);
         display(leftdistance);
         brick.MoveMotor('D', -50);
         brick.MoveMotor('A', 50);
         pause(5);
         rightdistance = brick.UltrasonicDist(2);
         display(rightdistance);
         brick.StopAllMotors('Brake');
        if rightdistance > leftdistance
             brick.MoveMotor('AD', 40);
             pause(5);
        end
        if  leftdistance > rightdistance
            brick.MoveMotor('D', -50);
            brick.MoveMotor('A', 50);
            pause(5);
            brick.MoveMotor('AD', 40);
            pause(5);
        end
    else 
            
        brick.MoveMotor('A', -25);
        brick.MoveMotor('D', 25);
        brick.MoveMotor('D', -50);
        brick.MoveMotor('A', 50);
        brick.MoveMotor('AD', 40);
        pause(1);
    end
   



    