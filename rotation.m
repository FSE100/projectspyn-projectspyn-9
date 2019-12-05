%brick.GyroCalibrate(4);
%angle = brick.GyroAngle(4);  % Get the current Gyro angle
brick.MoveMotorAngleRel('D', 35, -720, 'Brake');
        pause(1);
brick.StopAllMotors('Coast'); 
                % Print angle.