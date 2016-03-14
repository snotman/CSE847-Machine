Lamda(1:7) = [1e-5, 1e-4, 1e-3, 1e-2, 1e-1, 1, 10]
for i=1 : 1 : 7
    for k=1 : 1 : 5
    KFC_testX=x_train(2+48*(k-1):1+48*k,1:64)
    KFC_testY=y_train(2+48*(k-1):1+48*k,1)
    KFC_trainX(1:194,1:64)=x_train([1:1+48*(k-1),2+48*k:242],1:64)
    KFC_trainY=y_train([1:1+48*(k-1),2+48*k:242])
    KFC_w=RidgeReg(KFC_trainX, KFC_trainY, Lamda(i))
    KFC_MSE(k)=MSE(KFC_w, KFC_testX, KFC_testY)
    end
    Lam_MSE(i)=mean(KFC_MSE)
end
Lam_MSE