clc, clear all; n=1000;
for i=1:n
    z1=randn(1);z2=randn(1);z3=randn(1);z4=randn(1); 
    x(i) = z1^2+z2^2+z3^2+z4^2; % RVs of Empirical Distrn
    end
x = sort(x); F = ecdf(x);   % CDF of Empirical Distrn
m = 0:1:n;  y = chi2cdf(m,4); % CDF of theoretical Distrn
t = 0:1:n; figure(1)
stairs(x,1/n:1/n:1,'b','linewidth',2); % Plot empirical CDF
hold on;grid on;
title('Chi2cdf Distribution'); xlabel('x'); ylabel('F(x)');
ylim([0 1.05]);
plot(t,y,'r--','linewidth',2); % Plot theoretical CDF
legend('Empirical cdf','Theoretical cdf');hold off
for i=1:10
    max_diff(i) = (abs(y(i)-F(i)));% Max Diff at of samples
end
Max_Diff = max(max_diff)   % Max Difference
Percent_25th_Theor_Prac = [chi2inv(0.25,4) prctile(x,25)]
Percent_50th_Theor_Prac = [chi2inv(0.50,4) prctile(x,50)]
Percent_90th_Theor_Prac = [chi2inv(0.90,4) prctile(x,90)]

 