%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name: Isiah Turner
% Date: 09/17/2019
% Description: Creates a Tic-Tac-Toe board that allows a user to play the
% computer

% Welcome message and prompt
disp('Welcome to the best Tic-Tac-Toe game of your life doooooooood!');
disp('When picking a spot, 1=Top Left,2= Top Middle,3= Top Right,4= Left Middle,5= Middle,6= Right Middle,7= Bottom Left,8= Bottom Middle,9= Bottom Right')
confirm= input('Do you understand how to pick a spot? (Yes or No): ','s');
if strcmpi('yes',confirm)
    disp('Good!') 
elseif strcmpi('no',confirm)
    return
end
prompt= input('Are you ready to play some sweet ass Tic-Tac-Toe?(Yes or No): ','s');

%Showing the gameboard 
if strcmpi('yes',prompt)
    gameBoard= zeros(3,3)
   
elseif strcmpi('no',prompt)
    disp('See ya loser')
    return
end


%Player and CPU move code
playerMove= input('Pick a spot 1-9: ');
    switch (playerMove)
        case 1
            gameBoard(1,1)= 1
        case 2
            gameBoard(1,2)= 1
        case 3
            gameBoard(1,3)= 1
        case 4
            gameBoard(2,1)= 1
        case 5
            gameBoard(2,2)= 1
        case 6
            gameBoard(2,3)= 1
        case 7
            gameBoard(3,1)= 1
        case 8
            gameBoard(3,2)= 1
        case 9
            gameBoard(3,3)= 1
           
          disp(gameBoard)
    end     
            

               
         





humanMove=
















    


