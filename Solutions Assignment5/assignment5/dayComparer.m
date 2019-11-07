function [improvement] = dayComparer(iD, dayA, dayB)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
improvement = [];

for i = 1:length(iD)
    if (dayA(i) > dayB(i)) || (dayB(i) < dayA(i))
        %Keep it pushing
    elseif (dayA(i) < dayB(i)) || (dayB(i) > dayA(i))
        improvement = [improvement, iD(i)];
    end
end

