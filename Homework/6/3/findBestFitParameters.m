
% Setting the initial parameters for mu and sigma
initialinfo = [1 10];
% Calling getLogNorm with fminsearch to find maximum values of mu and sigma
x = fminsearch(@getLogNorm,initialinfo);
% Displaying the first and second values of vector x that correspond to mu and sigma
disp(['mu: ', num2str(x(1)), ' sigma: ', num2str(x(2))]);
