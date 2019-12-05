color = brick.ColorCode(3); 
    display(color);
while color == 5 || color == 3 || color == 4
    color = brick.ColorCode(3); 
    display(color);
    if color == 5
        brick.StopAllMotors('Brake');
        TestForward;
    end
    if color == 3
        brick.StopAllMotors('Brake');
    
       TestForward;
    end
    if color == 4
        brick.StopAllMotors('Brake');

        TestForward;
    end
end
