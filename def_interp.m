function [trans] = def_interp(A, B)
% need to take out V first?
lA = logm(A)
lB = logm(B)

simA = to_sim(lA)
simB = to_sim(lB)

T = 10;
trans = cell(T,1);
% use decasteljau subdivision then convert
decas = 0;
for t = 1:T
    trans{t} = expm(to_big_sim(decas{t}));
end
