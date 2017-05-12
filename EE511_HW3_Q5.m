clc; clear all; 
p = [0.06 0.06 0.06 0.06 0.06 0.15 0.13 0.14 0.15 0.13 0 0 0 0 0 0 0 0 0 0];
N = 10000;
for i = 1:N
    k = 0;
    while 1, 
        k = k + 1;
        j = randi(20);   % Get Uniform j
  	 if (3*rand) < p(j)/0.05  % Accept p(j) if U<p(j)/c, q(j)= 0.05
	 X(i) = j;  
     C(i) = k ;  % accepted outcomes    
     break;   end;   end ; end;
yyaxis left;hist(X); yyaxis right ; l= 1:20; plot(l,p);
% Check mean X and C    
disp([ mean(X) sum(p.*[1:20]) mean(C) var(C)]);
mean_cal__var_cal = ([mean(C) var(C)])
efficiency = N/(sum(C))
