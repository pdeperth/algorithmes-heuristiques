function [outputArg1,outputArg2] = PSO(omega,alpha,beta,xmin,xmax,ymin,ymax,f,itermax)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

x = xmin + (xmax-xmin).*rand;
y = ymin + (ymax - ymin).*rand;

vx = 0;
vy = 0;

xopt = x;
yopt = y;
zopt = f(x,y);

for k=1:itermax;
    r1 = rand;
    r2 = rand;
    
    vx_courant = omega*vx + alpha*r1*(xopt - x) + beta*r2*(zopt - x);
    vy_courant = omega*vy + alpha*r1*(xopt - y) + beta*r2*(zopt - y);
    
    x_courant = x + vx_courant;
    y_courant = y + vy_courant;
    
    z = f(x_courant,y_courant);
    if z < f(x,y)
        x = x_courant;
        y = y_courant;
    end
    
    if z < zopt
        xopt = x_courant;
        yopt = y_courant;
        zopt = z;
        
    
    

end



outputArg1 = inputArg1;
outputArg2 = inputArg2;
end

