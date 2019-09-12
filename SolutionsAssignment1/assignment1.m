%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 1: Matlab Scavenger Hunt and HelloWorld
%
% Submitted by: Isiah Turner
%
% Due: September 3, 2019
%
% Instructions: 

% There are two parts to this assignment. Part 1 deals with using the
% Matlab documentation to answer some questions or perform some tasks. Part
% 2 involves you writing your very first Matlab program!!

% Please write all of your responses in the following .mfile.
% If there are comments after the question (as in question 2) please 
% write your answer inside those comments. If there are not comments
% please write your answer with correct matlab syntax. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% Part 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Set the url of the matlab documentation to a variable called helpURL

helpURL = web ('https://www.mathworks.com/help/matlab/')

% 2. What does the command 'clear all' do?
%
% Answer: The command 'clear all' is used in order to clear out all of the
% variables in the workspace
%


% 3. What function would you use to take the average of the following
% numbers [1 7 21 32 67 32453]? Store your answer in a variable called
% averageAnswer.

m= [1,7,21,32,67,32453];
averageAnswer= mean(m)


% 4. What command would you type to see a list of all installed toolboxes?

toolboxes= matlab.addons.toolbox.installedToolboxes

% 5. What command would return a list of all of the available functions in 
% the image processing toolbox? 

helpwin image
imageprocessFunctions= web ('https://www.mathworks.com/help/images/referencelist.html?type=function');

% 6. On the line below figure, write a command to draw a graph of 
% x and y. 

x = linspace(-2*pi,2*pi);
y = sin(x);

figure
myPlot= plot(x,y)  %<- command goes here
print('Assignment1Plot','-dpdf')
        %Use print function to save figures that are open

% 7. Find a function that performs a statistical test you've seen used
% in a journal article (there are many possible answers to this). 

%
% Answer: R-squared
%         load 'data'
%           y= responseData (rows,columns);
%           X= independentVariables ('data'(rows,columns));
%         Fit in linear regression model
%           model= fitlm(X,y)
%         Accessing R-squared Ordinary and Adjusted values
%           model.Rsquared.Ordinary
%           model.Rsquared.Adjusted

% 8. What are the 2 major types of loops that MATLAB supports? What is the
% difference between them?
%   
%
% Answer: The two major types of loops are the 'for' loops and the 'while'
% loops. 'For' loops are used when you want to run a code a specific number
% of times. The 'While' loops run as long as certain conditions are
% met/stay true.
% 


% 9. What does NaN stand for? Give an example of when you would get NaN as
% an answer. 

%
% Answer: NaN stands for "Not-a-Number", it occurs when the operation
% (/,*,etc.) gives us an undefined numeric output. An example would be
% dividing zero by zero, it gives us an undefined numeric output.
%


% 10. The following code snippet executes but contains an error (we don't
% get a useful answer). See if you can use the documentation to fix the 
% error to get the sum of the numbers in A. Do not change or remove 
% any of the values in A.

A = [1 2 3 2 1 NaN 1 2 3 NaN];
S = nansum(A)


% 11. I used to love playing the game minesweeper. Is there a way that I
% could play a similar game on Matlab? Write the command that would launch
% the game if so. 

       xpbombs

% 12. What happens if you type why and hit enter in the command window?
% Repeat this a few times and copy your result below (Make sure everything
% is commented out).

%
% Answer: The rich rich and tall and good system manager suggested it.
%         He wanted it that way.
%         The programmer suggested it.
%         Mara suggested it.


%%%%%%%%%%%%%%%%%%%%%%%%%%  Part 2: Hello World %%%%%%%%%%%%%%%%%%%%%%%%%%

% Write some code that will print the string 'Hello World' to the screen. 
% There are several ways that you could do this. For an extra challenge, 
% make your program able to take text input from the user and output 
% whatever they input. (For ease of running and executing your solution,
% you should comment all the lines of code from Part 1. Just make sure you
% remove the comments before you submit.) 

%%% Enter the code for your program below this line

%   Simple text output creates a string by using double quotes
    "Hello World"

%Input to Output code ('s' makes it so the text is run as a text but not an
%expression
    prompt= 'Insert Desired Text:  ';
    sayWhatever= input(prompt,'s');

    disp(sayWhatever)

%%%%% When you have completed everything, type the following two commands
%%%%% (without comments) into your command window. 

%%% load handel
%%% sound(y, Fs)