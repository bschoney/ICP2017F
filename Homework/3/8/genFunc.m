function functionHandle = genFunc(varargin)

function out = genFuncOut(a,b,c)
% using the values of a,b,c calculated below to generate a function handle
    out = @(x) (a .* (x .^ 2) + b .* x + c);
    
end

% generating the switch case to set a,b,c based on the number of arguments\
% also, checking if the values are real numbers in each case
    switch nargin
        case 0
            disp('No inputs given')
            a = 0;
            b = 0;
            c = 0;
        case 1
            if isnumeric(varargin{1}) && isreal(varargin{1})
            disp('One input given')
            a = varargin {1};
            b = 0;
            c = 0;
            else
                disp('Make sure you have entered real, numeric values.')
            end
        case 2
            if isnumeric(varargin{1}) && isreal(varargin{1}) && ...
                    isnumeric(varargin{2}) && isreal(varargin{2})
            disp('Two inputs given')
            a = varargin{1};
            b = varargin{2};
            c = 0;
            else
                disp('Make sure you have entered real, numeric values.')
            end
        case 3
            if isnumeric(varargin{1}) && isreal(varargin{1}) && ...
                    isnumeric(varargin{2}) && isreal(varargin{2}) && ...
                        isnumeric(varargin{3}) && isreal(varargin{3})
            disp('Three inputs given')
            a = varargin{1};
            b = varargin{2};
            c = varargin{3};
            else
                disp('Make sure you have entered real, numeric values.')
            end
        otherwise
            error('Make sure you did not enter too many input arguments.')
    end
    
% calling genFuncOut to create function handle with values a,b,c
functionHandle = genFuncOut(a,b,c);

end
