function [delta, psi] = Q2ci(u,d,h,l,S0,Y0,fu,fd)
%Q2CI Summary of this function goes here
%   Detailed explanation goes here
delta = (l*fu - h*fd)/( S0*(l*u - h*d) );
psi = (u*fd - d*fu)/( (1+r)*(u*l-d*h) );
end

