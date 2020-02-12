
% November 7, 2019
% Assignment 5: Analyzing Isometric Strength Data
% This code contains functions that calculate mean values for males and
% female strength data across three days of lfiting. 
% Required functions include: importfile, genderIsoCalc, and dayComparer. 
% Non-function measures: normDay(1-3)mean 
% Built-in function use: writematrix = exports results matrix as a .csv
% file.

clearvars;
clc;

[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803.csv'); %importfile brings in the desired variables an displays them in the workspace.

[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMeans, femaleGroupIsoMeans] = genderIsoCalc(Day1, Day2, Day3, Gender) %genderIsoCalc calculates male and female individual/group means across 3 days of strength training.

[day1toDay2] = dayComparer(SubjectID, Day1, Day2) %the dayComparer functions determine if day 2 was greater than day 1 or if day 3 was greater than day 2.
[day2toDay3] = dayComparer(SubjectID, Day2, Day3)

normDay1mean = mean(Day1./Weight) %normDay take the mean of the mean of each day in relation to weight (normalizing data)
normDay2mean = mean(Day2./Weight)
normDay3mean = mean(Day3./Weight)

%creates one variable with all desired outputs
iso_results= [maleIsoIndMeans; femaleIsoIndMeans; maleGroupIsoMeans; femaleGroupIsoMeans; day1toDay2; day2toDay3; normDay1mean; normDay2mean; normDay3mean];

%exports the results matrix as a .csv file.
writematrix(iso_results, 'iso_results.csv'); %This function worked on two other computers running matlab 2019a (my computer has the matlab 2018b version).

disp('Export Complete')