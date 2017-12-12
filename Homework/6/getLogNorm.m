function res = getLogNorm(x)
% Loading the data from the file Drand.mat
D = load('Drand.mat');
% Initializing problog at zero
problog = 0;
% Summing the log of each value of the normal distribution given the data point, mu, and sigma
for i = 1:100
    problog = problog + log(normpdf(D.Drand(i),x(1),x(2)));
end
% Taking the negative of the problog sum to reconcile the needs for maximum
res = -problog;
end

