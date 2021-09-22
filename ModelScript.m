%% Stock Pricing Model Assignment
%% Data Importation

pricestruct = uiimport("dataAssignment1.m")
Prices = pricestruct.data
%%  1. Computing the Log Returns, Annualized Volatility and Drift
% Log Returns

R = diff( log(Prices) )
%% 
% Annualized Volatility

sigma = std(R)*sqrt(252)
%% 
% Drift

mu = mean(R)*252
%% 2. n-period Binomial Model
% Computing the values of u and d for the functions

u = exp( (mu - sigma^2/2)/252 + sigma/sqrt(252) )
d = exp( (mu - sigma^2/2)/252 - sigma/sqrt(252) )
%% 
% Given values

K = 3500;       % Strike price
S0 = 3478.05;   % Initial Stock Price
r = 0;          % Interest Rate
n = 42;         % Period - 2 months (21 days per month)
% Call option computation

price = callnperiod(u, d, r, S0, K, n)
%% 3. Analysis for Last 100 Days
% Recomputing mu and sigma for the last 100 days

Prices = Prices(end-100+1 : end)
%% 
% Recomputing the Log Returns, Drift (mu) and Volatility (sigma) based on the 
% restricted values of Prices for the last 100 days.

R = diff( log(Prices) )
sigma = std(R)*sqrt(252)
mu = mean(R)*252
%% 
% Then, the new values of the u and d are computed.

u = exp( (mu - sigma^2/2)/252 + sigma/sqrt(252) )
d = exp( (mu - sigma^2/2)/252 - sigma/sqrt(252) )
%% 
% Obtain the new call option value

price = callnperiod(u, d, r, S0, K, n)
% Explanation for the LOWER option price
% Delete this and type the reason here.