P_Rejection = 0; loop_count = 1;
reject_count = 0; sample_size = 5; % a value to begin with
while (P_Rejection < 0.95)
    for loop_count = 1:1000 %// 1000 lots
        sample = 1;
        L = randperm(125);  % random samples of a lot
            while(sample <= sample_size)
            if(L(sample)<=6)
                reject_count= reject_count +1;
                break;
            end
            sample = sample+1;
            end
    end
  P_Rejection = (reject_count/loop_count);
  reject_count = 0;
  sample_size = sample_size+1;
end
sample_size
