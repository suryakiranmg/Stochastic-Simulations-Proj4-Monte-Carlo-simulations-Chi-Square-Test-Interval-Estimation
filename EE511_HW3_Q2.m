% Poisson Sample with Bernoulli Approximation
clear all;
clc;
lambda = 120;
N = 1000;
for trial = 1:10         %trials
p = lambda/N;
u = rand(N,1);
bernoulliTrials = u<p;
CARS_per_Hour(trial) = sum(bernoulliTrials);
end
yyaxis left;
hist(CARS_per_Hour); 
%Theoretical Poisson Distrn
j = 1:200;
y = poisspdf(j,120);
yyaxis right;
plot(j,y)








