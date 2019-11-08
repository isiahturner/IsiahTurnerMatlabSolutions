function [improvement] = dayComparer(iD, dayA, dayB)
%dayComparer: The purpose of this function is to be able to input data
%from 3 different variables and output the identifier if the second input
%is larger than the third input. The identifiers will then be added to a
%matrix to show all of the cases where the second input is larger than the
%third (The 'or' part of my code was my quick attempt to have it not matter
%which day was put into the second or third inputs but didn't have time to
%try other possible ways).
improvement = [];

for i = 1:length(iD)
    if (dayA(i) > dayB(i)) || (dayB(i) < dayA(i))
        %Keep it pushing
    elseif (dayA(i) < dayB(i)) || (dayB(i) > dayA(i))
        improvement = [improvement, iD(i)];
    end
end

