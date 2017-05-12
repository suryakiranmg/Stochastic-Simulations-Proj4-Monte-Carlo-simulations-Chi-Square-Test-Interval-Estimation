count = 1;
while (count < 1000000)
x(count) = unifrnd(0,1);
count = count + 1;
end
x1 = circshift(x,1,2);
x1(1)= zeros;
cov(x,x1)



    