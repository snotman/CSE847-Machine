function [ w ] = RidgeReg( x, y, Lamda )
% A Matlab solver for ridge regression
% min{0.5*sum((xw-y)^2)+(Lamda/2)*(w^2)}
% derivation in respect of w
% sum((xw-y)*x)+Lamda*w=0
% w=x*y/(Lamda+sum(x^2))
X2 = x' * x;
[n1, n2] = size(X2);
a = Lamda * (eye(n1, n2))+X2;
if det(a) == 0
    display('singular matrix, unable to implement the ridge regression');
else
    w = a^(-1)* (x' * y);
end

