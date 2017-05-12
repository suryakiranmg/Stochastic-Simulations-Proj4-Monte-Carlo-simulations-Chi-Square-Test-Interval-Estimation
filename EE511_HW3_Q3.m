N = 0;
i = 1;
while (i <=10000) %100 samples
count = 0;
sum = 0;
while 1
A = rand();
sum = sum + A;
count = count +1;
if (sum > 4)
    break
end
end
N(i)= count;
hist(N)
i=i+1;
end
EXPECTATION_OF_N = mean(N) 

