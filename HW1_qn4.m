prompt = 'No. of heads required? ';
x = input(prompt)

A = randi([0:1],[5000,1]);

count = 0;

for i = 1 : length(A)
    if A(i) == 1
        count = count + 1;
        if count == x
        TotalTosses = i
        end
    end
    
end


