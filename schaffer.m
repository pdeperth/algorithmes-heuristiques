function [y] = schaffer(x1,x2)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
y = 0.5 + (cos(sin(abs(x1^2 - x2^2))) - 0.5)/(1 + 0.001*(x1^2 + x2^2))^2 
end

