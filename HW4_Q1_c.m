clc; clear all;
sum = 0;
N = 10000000; %No. of points
for i=1:N
    m=rand; n=rand;
    sum = sum + (exp(-(m+n).^2));
end
Integral_Sim = sum/N % Monte Carlo Simulation Result
syms x y;
f = exp(-(x+y)^2);
% Num integration Result
Integral_Actual = double(int(int(f, x, 0, 1), y, 0, 1))