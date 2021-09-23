function price = deriv1periodb(u,d,r,fu,fd)
% calculate the price of a derivative with payoff fd, fu in a single-period
% binomial model, give error message wen model not well defined.

if d<1+r && 1+r<u
    qu = (1+r-d)/(u-d);
    qd = 1-qu;
    price = (qu*fu+qd*fd)/(1+r);
else
    error('wrong parameters')
end

end

