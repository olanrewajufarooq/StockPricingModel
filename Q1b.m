function [delta0,psi0] = Q1b(u,d,r,S0,fuu,fud,fdd) 
%Q1B Summary of this function goes here
%   Detailed explanation goes here

fu = deriv1periodb(u, d, r, fuu, fud);

fd = deriv1periodb(u, d, r, fud, fdd);

[delta0, psi0] = Q1a(u,d,r,S0,fu,fd);
end

