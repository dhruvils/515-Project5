function [U] = toFindU(R)
    I = eye(length(R));
    S = 0.5 * (R - I);
    
    if S(1,1) + 1 ~= 0
        b = sqrt(S(1,1) + 1);
        c = S(1,2) / b;
        d = S(1,3) / b;
    elseif S(2,2) + 1 ~= 0
        c = sqrt(S(2,2) + 1);
        b = S(1,2) / c;
        d = S(2,3) / c;
    elseif S(3,3) + 1 ~= 0
        d = sqrt(S(3,3) + 1);
        b = S(1,3) / d;
        c = S(2,3) / d;
    end
    
    U = [
        0 -d c;
        d 0 -b;
        -c b 0
        ];
end