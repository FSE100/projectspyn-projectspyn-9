    color = brick.ColorCode(3); 
    display(color);
   
    if color == 5
        brick.StopAllMotors('Brake');
        pause(4);
        TestForward;
    elseif color == 3
        brick.StopAllMotors('Brake');
        
        brick.MoveMotor('C', -.5);
        pause(1);
        brick.MoveMotor('A', -30.5);
        brick.MoveMotor('D', -30);
        pause(1.5);
        brick.StopAllMotors('Brake');
    elseif color ==2
        brick.StopAllMotors('Brake');
        keyMove;
    end
   
