function [Y,Xf,Af] = fitNet(X,~,~)
    Xs = size(X);
    if(Xs(2)~=15)
        if(Xs(1)==15)
            X = X';
        else
            error('Invalid input format');
        end
    end

    [A,XfA,AfA] = fitA(X);
    [B,XfB,AfB] = fitB(X);
    [C,XfC,AfC] = fitC(X);
    [D,XfD,AfD] = fitD(X);
    [E,XfE,AfE] = fitE(X);
    [F,XfF,AfF] = fitF(X);
    
    Y = [A,B,C,D,E,F];
    Xf = [XfA,XfB,XfC,XfD,XfE,XfF];
    Af = [AfA,AfB,AfC,AfD,AfE,AfF];
end