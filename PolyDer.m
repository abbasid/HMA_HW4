function [ dp ] = PolyDer( p, dorder )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

for i = 1 : dorder
    order = size(p, 1) - 1;
    for j = 1 : size(p)
        p(j, 1) = p(j, 1) * order;
        order = order - 1;
    end
    p = p([1: size(p) - 1, 1]);
end
dp = p;
end

