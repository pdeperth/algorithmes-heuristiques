function Z = shubert(x,y)
%     I = length(X);
%     J = length(Y);
%     Z = zeros(I,J);
%     for i=1:I
%         for j=1:J
            s_x = 0;
            s_y = 0;
            for k=1:5
                s_x = s_x + k*cos((k+1)*x + k);
                s_y = s_y + k*cos((k+1)*y + k);
            end
            Z = s_x*s_y;
%         end
%     end      
end