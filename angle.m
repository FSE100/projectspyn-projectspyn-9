%brick.MoveMotorAngleRel('B', 20, -180, 'Brake'); 
%brick.WaitForMotor('B'); % Wait for motor to complete motion

% Move to 90 Position
brick.MoveMotorAngleAbs('A', 20, 90, 'Brake'); 
brick.WaitForMotor('A'); % Wait for motor to complete motion
position = brick.ResetMotorAngle("UDER");