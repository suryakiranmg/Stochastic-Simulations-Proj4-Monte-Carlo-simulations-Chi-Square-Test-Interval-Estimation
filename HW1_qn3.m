A = randi([0:1],[100,1])
RunMax = 0;
j = 1;
index = 1;
count = 0;
flag = 0; %//  to see if the previous encounter was 0 or 1 
for i = 1 : length(A)
    if A(i) == 1
        count = count + 1;
        if flag == 0 
            index = i;
            flag = 1;
        end
    end
    if A(i) == 0 || i == length(A)
        RunLength(j)= count;
        if count > RunMax
            RunMax = count;
        end
        if flag == 1
            j = j+1;
        end
        flag = 0;
        count = 0;
    end
end
RunMax   % Longest Run of Heads %
hist(RunLength)

