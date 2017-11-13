function out = convertTempVec(conversion, TempVec)
    
    if strcmp('F2C',conversion) || strcmp('f2c',conversion)
            out = (5 / 9) .* (TempVec - 32);
            disp([num2str(TempVec()) ' degrees Fahrenheit equals ' num2str(out) ' degrees Celsius']);
    elseif strcmp('C2F',conversion) || strcmp('c2f',conversion)
            out = (9 / 5) .* TempVec + 32 ;
            disp([num2str(TempVec()) ' degrees Celsius equals ' num2str(out) ' degrees Fahrenheit']);
    else
        error('Make sure you have entered the correct prompt for conversion.')
    end
    
end
