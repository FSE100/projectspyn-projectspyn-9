brick.MoveMotor('AB', 50);     % Motor A forward at half speed.
pause(1);                     % Let the motor turn for 1 second.
brick.MoveMotor('AB', -50);    % Motor A reverse at half speed.
pause(1);                     % Let the motor turn for 1 second.
brick.MoveMotor('AB', 10);    % Move both motors A and B at 10%
pause(1);                     % Let the motors turn for 1 second.
brick.MoveMotor('AB', 0);     % Stop both motors A and B 
%brick.StopAllMotors('Brake');   % Hard Stop, all motors.