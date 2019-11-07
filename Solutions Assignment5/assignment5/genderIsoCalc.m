function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(variable,A1,A2,A3)
%UNTITLED6 Separating males and females, if a guy then place into a new
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