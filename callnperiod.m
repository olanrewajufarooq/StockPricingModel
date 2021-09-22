function price = callnperiod(u, d, r, S0, K, n)
%CALLNPERIOD Summary of this function goes here
%   Detailed explanation goes here
if d<1+r && 1+r<u
    price=0;
    q = (1+r-d)/(u-d);
    for j=0:n
        price = price + nchoosek(n,j)*q^(n-j)*(1-q)^j*max(u^(n-j)*d^j*S0-K,0)/(1+r)^n;
    end
else
    error('wrong parameters')
end

end

