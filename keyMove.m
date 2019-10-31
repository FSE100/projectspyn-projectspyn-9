global key
InitKeyboard();

while 1
        pause(0.1);
        switch key
            case 'uparrow'
                brick.MoveMotor('AB', 50);
                pause(1);
                disp('Up Arrow Pressed!');
                
            case 'downarrow'
                brick.MoveMotor('AB', -20);
                pause(1);
                disp('Down arrow Pressed!');
                
            case 'leftarrow'
                brick.MoveMotor('A', -10);
                brick.MoveMotor('B', 10);
                pause(1);
                disp('Left Arrow Pressed!');
                
            case 'rightarrow'
                brick.MoveMotor('B', -10);
                brick.MoveMotor('A', 10);
                pause(1);
                disp('Right Arrow Pressed!');
                
            case 0
                disp('No Key Pressed!');
                brick.StopMotor('AB', 'Coast');
            case 'q'
                brick.StopAllMotors('Brake');
                break;
        end

end
CloseKeyboard();