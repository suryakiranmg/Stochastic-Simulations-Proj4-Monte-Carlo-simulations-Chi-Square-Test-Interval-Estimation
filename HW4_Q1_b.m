clc;clear all;
sum = 0;
N = 10000000; %No. of points
for i=1:N
    k=rand;
    sum = sum + 2*((exp(-((1/k)-1)^2))/(k^2));
end
Integral_Sim = sum/N % Monte Carlo Simulation Result
fun = @(x) (exp(-x) - exp(-2.*x));
Integral_Actual= integral(fun,0,Inf)%num integration