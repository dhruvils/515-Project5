function [B] = matlog(R)
if length(R) > 3
    R(4,:) = [];
    R(:,4) = [];
    ok = 1;
else ok = 0
end
trR = trace(R);
if R == eye(length(R))
    B = zeros(length(R));
elseif trR ~= -1 && trR ~= 3
    theta = acos((trR - 1) / 2);
    
    if sin(theta) ~= 0
        B = (theta / 2*sin(theta)) * (R - R.');
    end
else
    U = toFindU(R);
    B = pi * U;
end
if ok
    B = [B, [0;0;0];[0,0,0,0]];
end
