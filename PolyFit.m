function [ p ] = PolyFit( xi, yi, n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

x = sym('x');

A_i = [ x.^5 x.^4 x.^3 x.^2 x 1 ];
A = zeros(size(xi, 1), size(A_i, 2));

for i = 1: size(xi, 1)
   A(i, :) = subs(A_i, x, xi(i, :)); 
end

p = A\yi;

end

