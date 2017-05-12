i = 1;
while (count <200)   %// to generate random numbers
A = rand()
if A <= 0.8
    B(i) = 1;
else B(i) = 0;
end  
i = i+1; count = count +1;
end

No_of_heads=sum(B(:) == 1) % Total No of heads %

i=1; RunMax = 0; index = 1; count = 0; flag = 0; %//  to see if the previous encounter was 0 or 1 
for i = 1 : length(B)
    if B(i) == 1
        count = count + 1;
        if flag == 0 
            index = i; flag = 1;
        end
    end
    if B(i) == 0 || i == length(B)
        if count > RunMax
            RunMax = count;
        end
        flag = 0; count = 0;
    end
end
RunMax   % Longest Run of Heads %
C = categorical(B,[1 0],{'Heads','Tails'});
hist(C)

    