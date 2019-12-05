color = brick.ColorCode(3); 
    display(color);
    if color == 5
        brick.StopAllMotors('Brake');
        TestForward;
    elseif color == 3
        brick.StopAllMotors('Brake');
    
       TestForward;
    elseif color == 4
        brick.StopAllMotors('Brake');

        TestForward;
    end
