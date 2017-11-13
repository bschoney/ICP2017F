
entryNum = input('How many temperatures would you like to enter? ');
TempVec = cell(entryNum);

for i = 1:entryNum
    TempVec{i} = input('Enter the temperatures you would like to convert (one at a time): ');
end

ConvertType = input('Enter F2C for Fahrenheit to Celsius or C2F for Celsius to Fahrenheit: ', 's');

convertTempFor(ConvertType, TempVec);
