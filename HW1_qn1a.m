i=1;
for i = 1 : 20
A = randi([0:1],[50,1]);
No_of_heads(i)=sum(A(:) == 1) % Total No of heads %
end
subplot(2,2,1); hist(No_of_heads);
hold all;

i=1;
for i = 1 : 100
A = randi([0:1],[50,1]);
No_of_heads(i)=sum(A(:) == 1) % Total No of heads %
end
subplot(2,2,2); hist(No_of_heads);

i=1;
for i = 1 : 200
A = randi([0:1],[50,1]);
No_of_heads(i)=sum(A(:) == 1) % Total No of heads %
end
subplot(2,2,3); hist(No_of_heads);

i=1;
for i = 1 : 1000
A = randi([0:1],[50,1]);
No_of_heads(i)=sum(A(:) == 1) % Total No of heads %
end
subplot(2,2,4); hist(No_of_heads);





