function outstruct = getPolar(inputCartesianStruct)
% asking the user to give the x and y values for the structure
inputCartesianStruct.x = input('Enter the value for x: ');
inputCartesianStruct.y = input('Enter the value for y: ');
% making sure the entries have the required field then finding r and phi
if isfield(inputCartesianStruct, 'x') && isfield(inputCartesianStruct,'y')
    r = sqrt(inputCartesianStruct.x.^2 + inputCartesianStruct.y.^2);
    phi = atan(inputCartesianStruct.y./inputCartesianStruct.x);
else
    disp('Check your values for x and y.')
end
% making the output a structure with fields r and phi
outstruct.r = r;
outstruct.phi = phi;