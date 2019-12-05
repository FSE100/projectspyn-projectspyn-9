distance = brick.UltrasonicDist(2);
display(distance);
reading = brick.TouchPressed(1);
display(reading);
while reading == 0
    distance = brick.UltrasonicDist(2);
    display(distance);
    
    reading = brick.TouchPressed(1);
    display(reading);
    color = brick.ColorCode(3); 
    display(color);
    if distance > 55
        TestForward;
    elseif distance < 50
        Testturning;
    end
    
    
    if color == 5 || color == 3 || color == 2
        Testcolor;
    end
    if reading == 1
            touchDemo;
    end
    
end


   

    
   