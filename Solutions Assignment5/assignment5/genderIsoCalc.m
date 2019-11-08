function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(variable,A1,A2,A3)
%genderIsoCalc: the purpose of this function is to first seperate the
%values found between men and women. After the function decides whether to
%put the information into the male's vector or female vector it takes the
%average and of the second, third and fourth input and places it into a
%vector that is adding each value next to each other. It also calculates
%the average for each group.
maleIsoIndMeans= [];
femaleIsoIndMeans= [];
%vector if a girl then place into a different vector
for i= 1:length(variable)
    if variable(i) == 'M'
        %total weight for males is a in your function
        aAdd= [(A1(i,1)+A2(i,1)+A3(i,1))/3];
        maleIsoIndMeans= [maleIsoIndMeans,aAdd];
    elseif variable(i) == 'F'
        %total weight for males is b in your function
        bAdd= [(A1(i,1)+A2(i,1)+A3(i,1))/3];
        femaleIsoIndMeans= [femaleIsoIndMeans,bAdd];
    end
end

maleGroupIsoMean= sum(maleIsoIndMeans)/length(maleIsoIndMeans);
femaleGroupIsoMean= sum(femaleIsoIndMeans)/length(femaleIsoIndMeans);

% aAdd= [(A1(i,1)+A2(i,1)+A3(i,1))/3];
%         maleIsoIndMeans(i)=(A1(i,1)+A2(i,1)+A3(i,1))/3;
%         bAdd= [(A1(i,1)+A2(i,1)+A3(i,1))/3];
%         femaleIsoIndMeans(i)=(A1(i,1)+A2(i,1)+A3(i,1))/3;