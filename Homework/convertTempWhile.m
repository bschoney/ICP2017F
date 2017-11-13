function out = convertTempWhile(conversion, Temp)

    i = length(Temp);
    
    
    if strcmp('F2C',conversion) || strcmp('f2c',conversion)
        while i > 0
            out = (5 / 9) .* (Temp{i} - 32);
            disp([num2str(Temp{i}) ' degrees Fahrenheit equals ' num2str(out) ' degrees Celsius']);
            i = i - 1;
        end
    elseif strcmp('C2F',conversion) || strcmp('c2f',conversion)
        while i > 0
           out = (9 / 5) .* Temp{i} + 32 ;
           disp([num2str(Temp{i}) ' degrees Celsius equals ' num2str(out) ' degrees Fahrenheit']);
           i = i - 1;
        end
    else
        error('Make sure you have entered the correct prompt for conversion.')
    end
            
    

