clc; clear all;
p=0.2137; N = 1000;
for j=1:61
    pj(j) = p/j;  %pmfs
end
N60=[];
for j=1:1000
for i=1:10000
    u= rand;
    I = find(u< cumsum(pj)) ;% index where the condition matches
    X(i)= min(I);  
end
N60=[N60 find(X==60,1)];
end
hist(X,60);
mean = sum(N60)/N
Variance = sum((N60 - mean).^2)/N



    
