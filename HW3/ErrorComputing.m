LamdaError = zeros(3, 7);
LamdaError(1,1:7) = [1e-5, 1e-4, 1e-3, 1e-2, 1e-1, 1, 10];
for i=1 : 1 : 7
    w1=RidgeReg(x_train, y_train,LamdaError(1, i));
    LamdaError(2, i)=MSE(w1, x_train, y_train);
    LamdaError(3, i)=MSE(w1, x_test, y_test);
end
LamdaError
LogScale = log (LamdaError(1,1:7));
plot(LogScale, LamdaError(2,1:7),'k.',LogScale, LamdaError(3,1:7),'kp');