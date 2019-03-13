function y = Ackley(x,y)
  sum1 = 0;
  sum2 = 0;
  

  sum1 = x.^2+y.^2;
  sum2 = cos((2*pi)*x)+cos((2*pi)*y);
  
  y = 20 + exp(1)-20*exp(-0.2*sqrt(1/2*sum1))-exp(1/2*sum2);
  
end