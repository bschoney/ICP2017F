function outstruct = getCart(inputPolarStruct)
% asking the user to give the r and phi values for the structure
inputPolarStruct.r = input('Enter the value for r: ');
inputPolarStruct.phi = input('Enter the value for phi in radians: ');
% making sure the entries have the required field then finding x and y
if isfield(inputPolarStruct, 'r') && isfield(inputPolarStruct, 'phi')
    x = inputPolarStruct.r * cos(inputPolarStruct.phi);
    y = inputPolarStruct.r * sin(inputPolarStruct.phi);
else
    disp('Please check your values for r and phi.')
end
% making the output a structure with fields x and y
outstruct.x = x;
outstruct.y = y;
