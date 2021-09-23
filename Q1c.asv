function [delta0,psi0] = Q1c(u,d,r,S0,K,n)
%Q1C Summary of this function goes here
%   Detailed explanation goes here

%fu = deriv1periodb(u, d, r, fuu, fud);
fu = callnperiod(u, d, r, S0, K, n-1);

% Reverse the for loop
%fd = deriv1periodb(u, d, r, fud, fdd);
fd = callnperiod(u, d, r, S0, K, n-1);

[delta0, psi0] = Q1a(u,d,r,S0,fu,fd);
end