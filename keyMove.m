global key
InitKeyboard();

while 1
        pause(0.1);
        switch key
            case 'uparrow'
                brick.MoveMotor('A', 30.5);
                brick.MoveMotor('D', 20);
      
                disp('Up Arrow Pressed!');
                
            case 'downarrow'
                brick.MoveMotor('A', -30.5);
                brick.MoveMotor('D', -20);
                disp('Down arrow Pressed!');
                
            case 'leftarrow'
                brick.MoveMotor('A', -15);
                brick.MoveMotor('D', 15);
                disp('Left Arrow Pressed!');
                
            case 'rightarrow'
                brick.MoveMotor('D', -15);
                brick.MoveMotor('A', 15);
                disp('Right Arrow Pressed!');
                
            case 0
                disp('No Key Pressed!');
                brick.StopMotor('AD', 'Coast');
            case 'q'
                brick.StopAllMotors('Brake');
               
            case 'a'
                Test1;
            break;
            case 'e'
                brick.MoveMotor('C', 3);
                pause(1);
                
            case 'r'
                brick.MoveMotor('C', -3);
                pause(1);
        end

end
CloseKeyboard();