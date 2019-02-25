function Z = ackley(x,y)
    a = 20;
    b = 0.2;
    c = 2*pi;
%     I = length(X);
%     J = length(Y);
%     Z = zeros(I,J);
%     for i=1:I
%         for j=1:J
%             Z(i,j) = -a*exp(-b*sqrt(0.5*(X(i)^2+Y(j)^2))) - exp(0.5*(cos(c*X(i))+cos(c*Y(j)))) + a + exp(1);
%         end
%     end
    Z = -a*exp(-b*sqrt(0.5*(x^2+y^2))) - exp(0.5*(cos(c*x)+cos(c*y))) + a + exp(1);
end