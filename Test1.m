distance = brick.UltrasonicDist(2);
display(distance);
reading = brick.TouchPressed(1);
display(reading);
while reading == 0
    distance = brick.UltrasonicDist(2);
    display(distance);
    
    reading = brick.TouchPressed(1);
    display(reading);
    brick.SetColorMode(3, 2);
    color = brick.ColorCode(3); 
    display(color);
    if distance > 30
        TestForward;
    elseif distance < 30
        Testturning;
    end
    
    if color == 5 || color == 3 || color == 2
       Testturning; 
    end

    
    
end

if reading == 1
            touchDemo;
end
   