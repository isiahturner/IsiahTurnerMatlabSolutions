function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMeans,femaleGroupIsoMeans] = genderIsoCalc(Day1, Day2, Day3, Gender)


for i = [1:25]   %this allows the code to run continuously through all 25 participants, (i) denotes the specific subject number being run through the code
    if Gender(i) == 'M' %if statement specificies which conditions will run for male or female data
        maleIsoIndMeans(i,1) = ((Day1(i) + Day2(i) + Day3(i))/3);
        maleGroupIsoMeans = mean(nonzeros(maleIsoIndMeans)) %nonzero function only uses nonzero numbers for calculation since zeros can influence mean values            
    else       
        femaleIsoIndMeans(i,1) = ((Day1(i) + Day2(i) + Day3(i))/3);
        femaleGroupIsoMeans = mean(nonzeros(femaleIsoIndMeans))
    end

end


