
entryNum = input('How many temperatures would you like to enter? ');
TempVec = cell(entryNum);

while entryNum > 0
    TempVec{entryNum} = input('Enter the temperatures you would like to convert (one at a time): ');
    entryNum = entryNum - 1;
end

ConvertType = input('Enter F2C for Fahrenheit to Celsius or C2F for Celsius to Fahrenheit: ', 's');

convertTempWhile(ConvertType, TempVec);
