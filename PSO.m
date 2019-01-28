function [Z_global,X_global] = PSO(omega,alpha,beta,xmin,xmax,ymin,ymax,itermax,N_part)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

X = xmin + (xmax-xmin).*rand(2,N_part);
VX = zeros(2,N_part);

X_local = X;
X_global = X(:,1);

for i=1:N_part
    if schaffer(X(1,i),X(2,i)) < schaffer(X_global(1),X_global(2))
        Xglobal = X(:,i);
    end
end


for k=1:itermax;
    r1 = rand;
    r2 = rand;
    
    VX_courant = omega*VX + alpha*r1*(X_local - X) + beta*r2*(X_global - X);
    X_courant = X + VX_courant;
    
        
    for m = 1:N_part
        if schaffer(X_courant(1,m),X_courant(2,m)) < schaffer(X_local(1,m),X_local(2,m))
            X_local(:,m) = X_courant(:,m);
        end
    end
    
    for p= 1:N_part
        if schaffer(X_courant(1,m),X_courant(2,m)) < schaffer(X_global(1),X_global(2))
            X_global= X_courant(:,m);
        end
    end

    
end
Z_global = schaffer(X_global(1),X_global(2));
end

