% [X,Y] = meshgrid(-50:.5:50);                                
% Z = schaffer(X,Y);

% [X,Y] = meshgrid(-10:.2:10);
% 
% A = sin(X).*cos(Y).*abs(100 - sqrt(X.^2 + Y.^2)/pi);
% Z = -0.0001*(abs(A)+1);
% Z = X.*exp(-X.^2-Y.^2);
% 
% surf(X,Y,Z);

[zglobal, xglobal] = PSO(0.2,1,2,-10,10,-10,10,500,5000,@ackley)


