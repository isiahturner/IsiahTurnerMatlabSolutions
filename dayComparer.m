function [day1toDay2] = dayComparer(subjectID,Day1, Day2)

for i = [1:25]
    if (Day1(i) < Day2(i)) %if the day 2 value is greater than day 1, the subject ID is displayed.
    day1toDay2(i,1) = subjectID(i)
    end
end
    
