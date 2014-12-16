function [B] = matlog(R)
    traceR = trace(R);
    theta = acos((traceR - 1) / 2);
    
    if sin(theta) ~= 0
        B = (theta / 2*sin(theta)) * (R - R.');
    end
end