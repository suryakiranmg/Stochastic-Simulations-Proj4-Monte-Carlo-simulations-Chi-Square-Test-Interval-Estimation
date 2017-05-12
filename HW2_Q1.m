count = 1;
while (count < 100000)
y(count) = unifrnd(-3,2);
count = count + 1;
end
hist(y);
stats = [mean(y) std(y) var(y)]

%bootstat = bootstrp(100,@mean,y);
%bootstat = sort(bootstat)

%bootconf_mean = bootci(1000,@mean,y)
bootconf_var = bootci(1000,@std,y)

    