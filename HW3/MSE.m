function [ MSE ] = MSE( w, x, y )
%compute the mse with given w x and y
a=x * w - y;
N = length(y);
MSE = (1/N) * ((norm(a,2))^2);
end

