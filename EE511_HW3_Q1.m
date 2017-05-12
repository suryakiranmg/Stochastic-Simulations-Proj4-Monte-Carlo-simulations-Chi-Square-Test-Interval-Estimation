P_Rejection = 0;
loop_count = 0;
reject_count = 0;

    while(loop_count < 1000)
        sample = 1;
        L = randperm(125);
            while(sample <= 6)
            if(L(sample)<=6)
                reject_count= reject_count +1;
                break;
            end
            sample = sample+1;
            end
        loop_count= loop_count+1;
    end
    Prob_Rejection = (reject_count/loop_count)
    

