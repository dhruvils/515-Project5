function [trans] = simpl_def_interp(A, B)
lA = matlog(A);
lB = matlog(B);%matlog(B);

simA = to_sim(lA);
simB = to_sim(lB);

T = 10;
trans = cell(T,1);
for t = 1:T
    trans{t} = expm(to_big_sim(t/T * simB + (1-t/T) * simA));
end
