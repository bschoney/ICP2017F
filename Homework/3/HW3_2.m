% Initializing the variables for egg-cooking calculation
% Small egg mass
MS = 47;
% Large egg mass
ML = 67;
% Density
p = 1.038;
% Specific heat
c = 3.7;
% Thermal conductivity
K = 0.0054;
% Temperature of water
T_w = 100;
% Temperature of the yolk 
T_y = 70;
% Initial egg temperature
T_0 = input('Enter the initial temperature of the egg in Celsius: ');
% Asking user to give egg type
Egg = input('Is the egg small or large? ', 's');
% Creating the if statement to determine how long to cook egg
if Egg == 'small' || Egg == 'Small'
    t = ((MS^(2/3)*c*p^(1/3))/(K*pi^2*((4*pi)/3)^(2/3)))*log(0.76*((T_0-T_w)/(T_y-T_w)));
elseif Egg == 'large' || Egg == 'Large'
    t = ((ML^(2/3)*c*p^(1/3))/(K*pi^2*((4*pi)/3)^(2/3)))*log(0.76*((T_0-T_w)/(T_y-T_w)));
else
    disp('Please check for errors in your entries.');
end
% Displaying the time
disp(['It takes ' num2str(t) ' seconds to cook the egg.'])
