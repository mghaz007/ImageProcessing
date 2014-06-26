function [ norm ] = norm0( x )
%NORM0 Summary of this function goes here
%   Detailed explanation goes here

[k,dummy] = size(find(abs(x) > 0));

norm = k;
end

