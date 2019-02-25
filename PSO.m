function [Z_global,X_global] = PSO(omega,alpha,beta,xmin,xmax,ymin,ymax,itermax,N_part,fonction)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

X = xmin + (xmax-xmin).*rand(2,N_part);
VX = zeros(2,N_part);

X_local = X;
X_global = X(:,1);


scatter(X_local(1,:),X_local(2,:));
xlim([xmin xmax]);
ylim([ymin ymax]);



for i=1:N_part
    if fonction(X(1,i),X(2,i)) < fonction(X_global(1),X_global(2))
        X_global = X(:,i);
    end
end


for k=1:itermax
    r1 = rand;
    r2 = rand;
    
    while norm(omega*VX + alpha*r1*(X_local - X) + beta*r2*(X_global - X)) > min(xmax - xmin,ymax - ymin)
        r1 = rand;
        r2 = rand;
    end
    
    VX_courant = omega*VX + alpha*r1*(X_local - X) + beta*r2*(X_global - X);
    X_courant = X + VX_courant;
    
    for j = 1:N_part
        if X_courant(1,j) > xmax
            X_courant(1,j) = 2*xmax - X_courant(1,j);
        else
            if X_courant(1,j) < xmin
                X_courant(1,j) = 2*xmin - X_courant(1,j);
            end
        end
        
        if X_courant(2,j) > ymax
            X_courant(2,j) = 2*ymax - X_courant(2,j);
        else
            if X_courant(2,j) < ymin
                X_courant(2,j) = 2*ymin - X_courant(2,j);
            end
        end
    end
        
                
    
        
    for m = 1:N_part
        if fonction(X_courant(1,m),X_courant(2,m)) < fonction(X_local(1,m),X_local(2,m))
            X_local(:,m) = X_courant(:,m);
        end
    end
    
    for p= 1:N_part
        if fonction(X_courant(1,m),X_courant(2,m)) < fonction(X_global(1),X_global(2))
            X_global= X_courant(:,m);
        end
    end
    
    X = X_courant;
    scatter(X_local(1,:),X_local(2,:));
    xlim([xmin xmax]);
    ylim([ymin ymax]);
    
    pause(0.1)
    
end
X_global
Z_global = fonction(X_global(1),X_global(2));
end

