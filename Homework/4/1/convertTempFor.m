function  out = convertTempFor(conversion, Temp)

    TempLength = length(Temp);

    if strcmp('F2C',conversion) || strcmp('f2c',conversion)
        for i = 1:TempLength
            out = (5 / 9) .* (Temp{i} - 32);
            disp([num2str(Temp{i}) ' degrees Fahrenheit equals ' num2str(out) ' degrees Celsius']);
        end
    elseif strcmp('C2F',conversion) || strcmp('c2f',conversion)
         for i = 1:TempLength
            out = (9 / 5) .* Temp{i} + 32 ;
            disp([num2str(Temp{i}) ' degrees Celsius equals ' num2str(out) ' degrees Fahrenheit']);
         end
    else
        error('Make sure you have entered the correct prompt for conversion.')
    end
end
