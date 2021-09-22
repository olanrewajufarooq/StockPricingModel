%% Stock Pricing Model Assignment
%% Data Importation

pricestruct = uiimport("dataAssignment1.m")
pricedata = pricestruct.data
%%  1. Computing the Log Returns, Annualized Volatility and Drift
% Log Returns

log_return = diff( log(pricedata) )
%% 
% Annualized Volatility

sigma = std(log_return)*sqrt(252)
%% 
% Drift

mu = mean(log_return)*252
%% 2. n-period Binomial Model