    brick.SetColorMode(3, 2);    
    color = brick.ColorCode(3); 
        display(color);
    
        if color == 5 || color == 3 || color == 2
            Testcolor;
        end
        
         brick.StopAllMotors('Brake');
         pause(.1);
         brick.MoveMotorAngleRel('D', 35, 367, 'Brake');
        pause(.1);
        brick.WaitForMotor('D');
         brick.StopAllMotors('Brake');
         pause(.1);
         leftdistance = brick.UltrasonicDist(2);
         display(leftdistance);
        brick.MoveMotorAngleRel('D', 35, -715, 'Brake');
        pause(.1);
        brick.WaitForMotor('D');
        brick.StopAllMotors('Brake');
         pause(.1);
         rightdistance = brick.UltrasonicDist(2);
         display(rightdistance);
         brick.StopAllMotors('Brake');
         pause(.1);
        brick.MoveMotorAngleRel('D', 35, 367, 'Brake');
        pause(.2);
        brick.WaitForMotor('D');
         brick.StopAllMotors('Brake');
         pause(.3);
         forwarddistance = brick.UltrasonicDist(2);
         display(forwarddistance);
         
        if leftdistance < 45 && rightdistance < 45 && forwarddistance < 45
        brick.StopAllMotors('Brake');
        pause(1);
        brick.MoveMotorAngleRel('D', 50, -715, 'Brake');
        
        brick.WaitForMotor('D');
       % brick.StopAllMotors('Brake');
        %pause(3);
       brick.MoveMotor('A', 40.5);
     brick.MoveMotor('D', 40);
     pause(1); 
       brick.SetColorMode(3, 2);    
    color = brick.ColorCode(3); 
        display(color);
    
        if color == 5 || color == 3 || color == 2
            Testcolor;
        end
         elseif  leftdistance > rightdistance && leftdistance > forwarddistance
            brick.MoveMotorAngleRel('D', 40, 367, 'Brake');
        pause(2);
        brick.WaitForMotor('D');
          brick.MoveMotor('A', 40.5);
     brick.MoveMotor('D', 40);
     pause(1); 
          brick.SetColorMode(3, 2);    
    color = brick.ColorCode(3); 
        display(color);
    
        if color == 5 || color == 3 || color == 2
            Testcolor;
        end
        elseif forwarddistance > rightdistance && forwarddistance > leftdistance
           brick.MoveMotor('A', 40.5);
     brick.MoveMotor('D', 40);
     pause(1); 
           brick.SetColorMode(3, 2);    
    color = brick.ColorCode(3); 
        display(color);
    
        if color == 5 || color == 3 || color == 2
            Testcolor;
        end
         
        elseif rightdistance > leftdistance && rightdistance > forwarddistance
             brick.MoveMotorAngleRel('A', 50, 360, 'Brake');
            pause(2);
            brick.WaitForMotor('A');
           brick.MoveMotor('A', 40.5);
     brick.MoveMotor('D', 40);
     pause(1); 
           brick.SetColorMode(3, 2);    
    color = brick.ColorCode(3); 
        display(color);
    
        if color == 5 || color == 3 || color == 2
            Testcolor;
        end
       
        end

