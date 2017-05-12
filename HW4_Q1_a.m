clc;clear all;
sum = 0;
N = 10000000; %No. of points
for i=1:N
    k=rand;
    sum = sum + 4*(exp((16*k^2)-(12*k)+2));
end
Integral_Sim = sum/N % Monte Carlo Simulation Result
fun = @(x) exp(x + x.^2);
Integral_Actual = integral(fun,-2,2)% num integration
