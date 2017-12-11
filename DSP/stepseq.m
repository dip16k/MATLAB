function [y n] = stepseq( n,n0,n1 )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    % x(n) = u(n-n0);  n1<= n <= n2;
    n = n1:n2;
    y = [(n-n0)>=0];

end

