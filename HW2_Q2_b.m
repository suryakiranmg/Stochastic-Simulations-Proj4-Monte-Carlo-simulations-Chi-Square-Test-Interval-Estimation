count = 1;
while (count < 100000)
x(count) = unifrnd(0,1);
count = count + 1;
end
hist(x)
x1 = circshift(x,1,2);
x1(1)= zeros;
x2 = circshift(x1,1,2);
x2(1)= zeros;
x3 = circshift(x2,1,2);
x3(1) = zeros;
y = x - (2.*x1) + (0.5.*x2)- x3;
cov(x,y)

