%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 2: Matlab Basics
%
% Due: September 13, 2019
%
% Instructions: 

% Edit this m-file in MATLAB and save your answers in it. At the top of 
% your file, you should have a comment section with your name, the due date,
% and a brief description of what is contained in the file. This will be the 
% standard format going forward for your assignments. If I don't ask for a
% specific variable name, use any name that you think is reasonable.
% Remember to use mixed case for your variables. You will need to add at
% least one line of code to every question except the final one. Do not put
% your executable code in comments unless the question specifically asks you to. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Your assignment comment block starts here 
%Name: Isiah Turner
%Due Date: 9/12/2019
%Description: This file contains the answers/solutions to Assignment 2. In
%general the assignment was geared towards utilizing previously learned
%MatLab functions as well as work on new components (setting variables,
%using variables within functions and improve reading code to understand
%what the code is doing).

%the following line will refresh your workspace each time you run your script
clear, close all 

% 1. Create a variable to store the name of the hurricane. 
     evacuate= "Dorian"

% 2. Create a variable myage and store your age on the day the hurricane is 
% supposed to impact our area in it. Subtract two from the value of the
% variable. Add one to the value of the variable. 
     myage= (22);
     myage2= (myage-2+1);


% 3. Use the built-in function namelengthmax to find out the maximum number of
% characters that you can have in an identifier name under your version of
% MATLAB. Store the value in a variable called myMaxNameLength
    myMaxNameLength= (63);

% 4. Create two variables to store a weight in pounds and ounces. Use who and whos
% to see the variables. Clear one of them and then use who and whos again.
    weightPounds= 13;
    weightOunces= 72;
    
    who
    whos
    
    clear 'weightOunces'
    who
    whos

% 5. Store a number with a decimal place in a double variable (the default). Convert the
% variable to the type int32 and store the result in a new variable (hint: this is known
% as casting in computer programming).
    v= (1.5);
    vConverted= int32(v);
    
    who
    whos

% 6. Create a variable called pounds to store a weight in pounds. Convert this to 
% kilograms and assign the result to a variable kilos.
    Unit= symunit;
    pounds= (409);
    kilos= unitConvert((pounds*Unit.lb), (Unit.kg));
    double(separateUnits(kilos))
    


% 7. Create a variable fTemp to store a temperature in degrees Fahrenheit (F). 
% Convert this to degrees Celsius (C) and store the result in a variable cTemp.
    fTemp= (85)*Unit.Fahrenheit;
    cTemp= unitConvert((fTemp), (Unit.Celsius),'Temperature','absolute');
    double(separateUnits(cTemp))
    


% 8. The function sin calculates and returns tunitConverthe sine of an angle in radians, 
% and the function sind returns the sine of an angle in degrees. Verify 
% that calling the sind function and passing 90 degrees to it results in 1. 
% Pass an argument to sin that also results in 1. 
    a= sind(90);
    b= sin(pi/2);

% 9. In the ASCII character encoding, the letters of the alphabet are, 
% in order: ?a? comes before ?b? and also ?A? comes before ?B?. However, 
% which comes first, the lower or uppercase letters?

% Answer: uppercase letters come first, uppercase letters are assigned values that are
% earlier than the lowercase letters.


% 10. Using the colon operator, create the following row vectors:
% 2 3 4 5 6 7 
% 1.1000 1.3000 1.5000 1.7000 
% 8 6 4 2
% Store your results with variable names vecA, vecB and vecC respectively.
    vecA= (2:7)
    vecB= (1.1:0.2:1.7)
    vecC= flip(2:2:8)

% 11. Give the MATLAB expression that would create a vector 
% (in a variable called vec) of 50 elements that range, equally spaced, 
% from 0 to 2pi:
    vec= linspace(0,2*pi,50);

% 12. Using the colon operator and the transpose operator, 
% create a column vector that has the values -1 to 1 in steps of 0.5.
    vecD= (-1:0.5:1)'


% 13. Create a variable called rows that is a random integer in the inclusive range 
% from 1 to 5. Create a variable called cols that is a random integer in the 
% inclusive range from 1 to 5. Create a matrix called result of all zeros with the 
% dimensions given by the values of rows and cols. 
    rows= randi(5);
    cols= randi(5);
    
    result= zeros(rows,cols)


% 14. Find the sum of 3 + 5 + 7 + 9 + 11. Store the result in a variable.
    A= [3 5 7 9 11];
    sumAnswer= sum(A)
    


% 15. Create a vector of five random integers, each in the inclusive range 
% from -10 to 10. Perform each of the following and store your results in 
% appropriately named variables. (you should have a seperate line of code for each):
% - subtract 3 from each element n
% - count how many are positive
% - get the absolute value of each element
% - find the maximum.

    RandVector= randi([-10,10],1,5)
    subtract= (RandVector)-3
    numberPositives= sum(subtract>1)
    absoluteValues= abs(subtract)
    vectorMaximum= max(absoluteValues)
    
    

% 16. Write some code that will calculate the area of a trapezoid. Create
% variables for base1, base2, and height and assign them values. Store the
% result of your calculation in a variable called trapArea. Comment your
% code so that another user can understand what your code does. 

%   Equation used for calculating the area of a trapezoid

%        trapArea= ((base1+base2)*h)/2
        
%   Variables Defined
    
%   base1= the length at the top of the rectangular portion of the
%   trapezoid
%   base2= the length at the bottom of the rectangular portion of the
%   trapezoid
%   height= the length from base1 to base2
%   Plug values (base1, base2 and height) into the equation

        base1= 8
        base2= 14
        h= 5
        trapArea= ((base1+base2)*h)/2

% 17. The input function can be used to enter a vector, such as:
%      >> vec = input('Enter a vector: ')
%      Enter a vector: 4 : 7
%      vec = 4 5 6 7
% Experiment with this and write code to allow the user to enter a matrix.
% Store the input matrix in a variable called resultMatrix.
   
    resultMatrix= randi(75,5,5);
    matrix= input('Enter a matrix: ');
    
% 18. In biomechanics, a vector is a set of numbers that indicate 
% both magnitude and direction. Units such as velocity and force are vector 
% quantities. An example of a vector could be <2.34, 4.244, 5.323> meters/second. 
% This vector describes the velocity of an object at a certain point in 
% three-dimensional space, <x,y,z>. In solving problems related to vectors, 
% it?s handy to know the unit vector of a certain measurement. 
% A unit vector is a vector that has a certain direction, but a magnitude of 1.
% The equation for a unit vector in three-dimensional space is:

% u = <x,y,z>/sqrt(x^2 + y^2 + z^2)

% Write some code that prompts the user for x, y, and z values, and then 
% calculates the unit vector and stores the value in a variable called
% unitVector. 
    x= input('Enter x-value: ');
    y= input('Enter y-value: ');
    z= input('Enter z-value: ');
    inputVector= [x y z];
    
    %Calculate the magnitude 
    mag= sqrt(sum(inputVector.^2));
    
    %Calulate unit vector, unit vector for x is first, y is second and z is
    %third
    unitVector= (inputVector/mag)
    
    

% 19. Generate a random integer n, create a vector of the integers 1 through 
% n in steps of 2, square them, and plot the squares. When I run your code
% I expect to see a plot pop up. 

    n= randi(80);
    if rem(n,2)== 0
        goBrowns= (1:2:n);
        superBowl= (goBrowns).^2;
        
        figure
        plot(goBrowns,superBowl,'r-o')
        hold on
        title('Happiness Due to Winning')
        xlabel('Point Differential')
        ylabel('Team Happiness')
        hold off
    else
        N= (n+1);
        goPSU= (1:2:N);
        champsCFB= (goPSU).^2;
        
        figure
        plot(goPSU,champsCFB,'g-d')
        hold on
        title('Effect of Winning on Celebratory Drinking')
        xlabel('Point Differential')
        ylabel('Number of After-parties')
        hold off
    end
    
    
% 20. Copy and paste the following lines of code into the command window.
% You will probably need to do this one line at a time. Write a short
% description about what each line of code does. Put your response in a
% comment block in this m file. 

% Paste this code a line at a time into your command window:

% load cycloneTracks
% head(cycloneTracks)
% figure
% latMalakas = cycloneTracks.Latitude(cycloneTracks.ID == 1012);
% lonMalakas = cycloneTracks.Longitude(cycloneTracks.ID == 1012);
% geoplot(latMalakas,lonMalakas,'.-')
% geolimits([0 60],[100 180])
% hold on
% latMegi = cycloneTracks.Latitude(cycloneTracks.ID == 1013);
% lonMegi = cycloneTracks.Longitude(cycloneTracks.ID == 1013);
% geoplot(latMegi,lonMegi,'.-')

% Write a short description of what each line does here. It's ok if you 
% don't completely understand, just use your best guess after looking at a bit 
% documentation. Use the following format:

% line 252: loads the lattitude, longtitudes, wind pressure, IDs of the information for the hurricane as it was
% moving over time
% line 253: it takes the top 8 rows and columns from a table, tall array
% and timetable
% line 254: lets matlab know to make the plot have its own individual image
% line 255: latMalakas is taking the lattitudes from the cycloneTracks
% table from the IDs for Malakas
% line 256: longMalakas is taking the longitudes from the cycloneTracks table
% from the IDs for Malakas
% line 257: uses the latitude (y-axis) and the longitude (x-axis) to plot
% a graph using a dot-dash line that is based off the Earth's coordinate system
% line 258: sets the limits for the lattitude and longitude in order to
% look at a more specific part of the geoplot. Setting the x-axis and the
% y-axis
% line 259: telling matlab that the plot isn't finished and you are about
% to add something to it (another plotted line, axis labels, legends,
% titles, etc.)
% line 260: retrieving the latitude data from cycloneTracks for the ID 1013, referred to as
% Megi in the table
% line 261: retrieving the latitude data form cycloneTracks for the ID
% 1013, also referred to as Megi in the table
% line 262: plotting another dot-dash line onto the figure using the data
% from Megi's latitude (y-axis) and Megi's longitude (x-axis)
%
%
%
%
%
%
%
%
%