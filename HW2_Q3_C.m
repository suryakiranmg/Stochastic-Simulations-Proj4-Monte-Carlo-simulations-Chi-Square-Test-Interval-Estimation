A = randi([0 9],1000000,1);
hist(A);

%h = chi2gof(A,A,0.95)
x = chi2inv(0.95,9)
binranges = 1:10;
[bincounts] = histc(A,binranges);

val = ((bincounts - 100000).^2)/100000;
chi2 = sum(val)

