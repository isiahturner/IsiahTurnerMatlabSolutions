%Import the file
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');

%Male vs. Female
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3);

%Comparing Day 1 and Day 2 then putting subjects with improvement
%into a new matrix
[day1toDay2] = dayComparer(SubjectID, Day1, Day2);

%Comparing Day 2 and Day 3 then putting the subjects who have showed
%improvement into a new matrix
[day2toDay3] = dayComparer(SubjectID, Day2, Day3);

%%Normalizing the data and putting it into normDay1mean, normDay2mean,
%%normDay3mean

    %1. Normalize the data for Day 1
    normalizedWeight1= [Day1./Weight];
    
    %2. Add up for normalized data for Day 1
    normDay1mean= mean(normalizedWeight1);
    normDay1meanCheck= sum(normalizedWeight1)/length(Day1); %Making sure it is the correct length because there should be 25 normalized weights
    if normDay1mean ~= normDay1meanCheck
        disp('Something is wrong with the mean, check the math')
    else
    end
    
    %3. Normalize the data for Day 2
    normalizedWeight2= [Day2./Weight];
    
    %4. Add up for normalized data for Day 2
    normDay2mean= mean(normalizedWeight2);
    normDay2meanCheck= sum(normalizedWeight2)/length(Day2); %Making sure it is the correct length because there should be 25 normalized weights
    if normDay2mean ~= normDay2meanCheck
        disp('Something is wrong with the mean, check the math')
    else
    end
    
    %5. Normalize the data for Day 3
    normalizedWeight3= [Day3./Weight];
    
    %6. Add up for normalized data for Day 2
    normDay3mean= mean(normalizedWeight3);
    normDay3meanCheck= sum(normalizedWeight3)/length(Day3); %Making sure it is the correct length because there should be 25 normalized weights
    if normDay3mean ~= normDay3meanCheck
        disp('Something is wrong with the mean, check the math')
    else
    end
    
%Export your results (more efficient to create a big loop that has nested
%loops that way it doesn't need to be broken up but this was easiest for me
%to mentally picture for now. I assume the loop would change based on how
%many times I am changing the vector and also be based on how many times I
%need to store the created vector.
storeMaleIso= cell(25,1);
for i= 1:length(maleIsoIndMeans)
    storeMaleIso{i,1} = maleIsoIndMeans(i);
end
       
storeFemaleIso= cell(25,1);
for j= 1:length(femaleIsoIndMeans)
    storeFemaleIso{j,1} = maleIsoIndMeans(j);
end
    
storeMaleGroupIso= cell(25,1);
storeMaleGroupIso{1,1}= (maleGroupIsoMean);

storeFemaleGroupIso= cell(25,1);
storeFemaleGroupIso{1,1}= (maleGroupIsoMean);

storeDay1toDay2= cell(25,1);
for k= 1:length(day1toDay2)
    storeDay1toDay2{k,1}= day1toDay2(k);
end

storeDay2toDay3= cell(25,1);
for l= 1:length(day2toDay3)
    storeDay2toDay3{l,1}= day2toDay3(l);
end

storeDayMean1= cell(25,1);
for m= 1:length(normDay1mean)
    storeDayMean1{m,1}= normDay1mean(m);
end

storeDayMean2= cell(25,1);
for n= 1:length(normDay2mean)
    storeDayMean2{n,1}= normDay2mean(n);
end

storeDayMean3= cell(25,1);
for o= 1:length(normDay3mean)
    storeDayMean3{o,1}= normDay3mean(o);
end


dataTable= table(storeMaleIso,storeFemaleIso, storeMaleGroupIso, storeFemaleGroupIso, storeDay1toDay2, storeDay2toDay3, storeDayMean1, storeDayMean2, storeDayMean3,...
    'VariableNames',{'maleIsoIndMeans', 'femaleIsoIndMeans', 'maleGroupIsoMean', 'femaleGroupIsoMean', 'day1toDay2', 'day2toDay3', 'normDay1mean', 'normDay2mean', 'normDay3mean'});

writetable(dataTable,'iso_results.csv')

