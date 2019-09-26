%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name: Isiah Turner
% Date: 09/17/2019
% Description: Creates a Tic-Tac-Toe board that allows a user to play the
% computer
%%%Put the Check at the end of the move the way it is formed right now, I
%%%can also keep track of the moves too adding to possible moves

%Reset Board
clc
clear
%Set variables
usedMoves=[];

% Welcome message and prompt
disp('Welcome to the best Tic-Tac-Toe game of your life doooooooood!');%make it so they lose if they don't put in correct term%
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
    gameBoard= {1,2,3;4,5,6;7,8,9};
    disp(gameBoard)
  
elseif strcmpi('no',prompt)
    disp('See ya loser')
    return
end


%PlayerMove 1
playerMove= input('Pick a spot 1-9: ');
%add a way to make sure they can't pick a number that isn't 1-9 can't be
%picked, make sure the number is turned into an integer

%save the move
usedMoves=[usedMoves,playerMove];

%completing the player's first move
    switch (playerMove)
        case 1
            gameBoard{1,1}= 'X';
            disp(gameBoard)
        case 2
            gameBoard{1,2}= 'X';
            disp(gameBoard)
        case 3
            gameBoard{1,3}= 'X';
            disp(gameBoard)
        case 4
            gameBoard{2,1}= 'X';
            disp(gameBoard)
        case 5
            gameBoard{2,2}= 'X';
            disp(gameBoard)
        case 6
            gameBoard{2,3}= 'X';
            disp(gameBoard)
        case 7
            gameBoard{3,1}= 'X';
            disp(gameBoard)
        case 8
            gameBoard{3,2}= 'X';
            disp(gameBoard)
        case 9
            gameBoard{3,3}= 'X';
            disp(gameBoard)
    end
    

    
%Computer Move1 
if gameBoard{2,2}~= 'X'
    gameBoard{2,2}= 'O';
    disp(gameBoard)
    usedMoves=[usedMoves,5];
elseif gameBoard{2,2}=='X'
    gameBoard{1,3}= 'O'
    disp(gameBoard)
    usedMoves=[usedMoves,3];
end

%Player's second move
disp('Your Turn Again!')
playerMove= input('Pick a spot 1-9: ');

%Checking if move is available
if ismember(playerMove,usedMoves)
    disp('Pick a used spot again and YOU LOSE')
    playerMove= input('Pick a spot 1-9: ');
    if ismember(playerMove,usedMoves)%Include menu right here that forces them to quit out
            disp('You lose')
            return
    end
end
%save the move
usedMoves= [usedMoves,playerMove];

%completing the Player's second move
    switch (playerMove)
        case 1
            gameBoard{1,1}= 'X';
            disp(gameBoard)
        case 2
            gameBoard{1,2}= 'X';
            disp(gameBoard)
        case 3
            gameBoard{1,3}= 'X';
            disp(gameBoard)
        case 4
            gameBoard{2,1}= 'X';
            disp(gameBoard)
        case 5
            gameBoard{2,2}= 'X';
            disp(gameBoard)
        case 6
            gameBoard{2,3}= 'X';
            disp(gameBoard)
        case 7
            gameBoard{3,1}= 'X';
            disp(gameBoard)
        case 8
            gameBoard{3,2}= 'X';
            disp(gameBoard)
        case 9
            gameBoard{3,3}= 'X';
            disp(gameBoard)
    end


%Computer's second move
if gameBoard{1,1} == 'X' & gameBoard{1,2} == 'X' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    usedMoves= [usedMoves,3];
    disp(gameBoard)

elseif gameBoard{1,2} == 'X' & gameBoard{1,3} == 'X' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    usedMoves= [usedMoves,1];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{1,3} == 'X' & gameBoard{1,2}== 2
    gameBoard{1,2}= 'O';
    usedMoves= [usedMoves,2];
    disp(gameBoard)
elseif gameBoard{2,1} == 'X' & gameBoard{2,2} == 'X' & gameBoard{2,3}== 6
    gameBoard{2,3}= 'O';
    usedMoves= [usedMoves,6];
    disp(gameBoard)
elseif gameBoard{2,1} == 'X' & gameBoard{2,3} == 'X' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    usedMoves= [usedMoves,5];
    disp(gameBoard)
elseif gameBoard{2,2} == 'X' & gameBoard{2,3} == 'X' & gameBoard{2,1}== 4
    gameBoard{2,1}= 'O';
    usedMoves= [usedMoves,4];
    disp(gameBoard)
elseif gameBoard{3,1} == 'X' & gameBoard{3,3} == 'X' & gameBoard{3,2}== 8
    gameBoard{3,2}= 'O';
    usedMoves= [usedMoves,8];
    disp(gameBoard)
elseif gameBoard{3,1} == 'X' & gameBoard{3,2} == 'X' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    usedMoves= [usedMoves,9];
    disp(gameBoard)
elseif gameBoard{3,2} == 'X' & gameBoard{3,3} == 'X'& gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    usedMoves= [usedMoves,7];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{3,1} == 'X' & gameBoard{2,1}== 4
    gameBoard{2,1}= 'O';
    usedMoves= [usedMoves,4];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{2,1} == 'X' & gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    usedMoves= [usedMoves,7];
    disp(gameBoard)
elseif gameBoard{2,1} == 'X' & gameBoard{3,1} == 'X' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    usedMoves= [usedMoves,1];
    disp(gameBoard)
elseif gameBoard{1,2} == 'X' & gameBoard{3,2} == 'X' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    usedMoves= [usedMoves,5];
    disp(gameBoard)
elseif gameBoard{1,2} == 'X' & gameBoard{2,2} == 'X' & gameBoard{3,2}== 8
    gameBoard{3,2}= 'O';
    usedMoves= [usedMoves,8];
    disp(gameBoard)
elseif gameBoard{2,2} == 'X' & gameBoard{3,2} == 'X' & gameBoard{1,2}== 2
    gameBoard{1,2}= 'O';
    usedMoves= [usedMoves,2];
    disp(gameBoard)
elseif gameBoard{1,3} == 'X' & gameBoard{3,3} == 'X' & gameBoard{2,3}== 6
    gameBoard{2,3}= 'O';
    usedMoves= [usedMoves,6];
    disp(gameBoard)
elseif gameBoard{1,3} == 'X' & gameBoard{2,3} == 'X' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    usedMoves= [usedMoves,9];
    disp(gameBoard)
elseif gameBoard{2,3} == 'X' & gameBoard{3,3} == 'X' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    usedMoves= [usedMoves,3];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{3,3} == 'X' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    usedMoves= [usedMoves,5];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{2,2} == 'X' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    usedMoves= [usedMoves,9];
    disp(gameBoard)
elseif gameBoard{2,2} == 'X' & gameBoard{3,3} == 'X' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    usedMoves= [usedMoves,1];
    disp(gameBoard)
elseif gameBoard{3,1} == 'X' & gameBoard{1,3} == 'X' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    usedMoves= [usedMoves,5];
    disp(gameBoard)
elseif gameBoard{2,2} == 'X' & gameBoard{1,3} == 'X' & gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    usedMoves= [usedMoves,7];
    disp(gameBoard)
elseif gameBoard{3,1} == 'X' & gameBoard{2,2} == 'X' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    usedMoves= [usedMoves,3];
    disp(gameBoard)
else
     %Computer's second move if it can't win or block opponent
    if gameBoard{1,1} == 1 & gameBoard{2,2} == 'X'
    gameBoard{1,1}= 'O';
    disp(gameBoard)
    usedMoves=[usedMoves,1];
    elseif gameBoard{1,3} == 3 & gameBoard{2,2} == 'X'
    gameBoard{1,3}= 'O';
    disp(gameBoard)
    usedMoves=[usedMoves,3];
    elseif gameBoard{3,1} == 7 & gameBoard{2,2} == 'X'
    gameBoard{3,1}= 'O';
    disp(gameBoard)
    usedMoves=[usedMoves,7];
    elseif gameBoard{3,3} == 9 & gameBoard{2,2} == 'X'
    gameBoard{3,3}= 'O';
    disp(gameBoard)
    usedMoves=[usedMoves,9];
    %When player didn't take middle first
    elseif gameBoard{1,2}=='X' & gameBoard{3,1}=='X' & gameBoard{2,3}== 6
        gameBoard{2,3}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,6];
    elseif gameBoard{1,2}=='X' & gameBoard{3,3}=='X' & gameBoard{2,1}== 4
        gameBoard{2,1}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,4];
    elseif gameBoard{3,2}=='X' & gameBoard{1,1}=='X' & gameBoard{2,3}== 6
        gameBoard{2,3}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,6];
    elseif gameBoard{3,2}=='X' & gameBoard{1,3}=='X' & gameBoard{2,1}== 4
        gameBoard{2,1}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,4];
    elseif gameBoard{2,1}=='X' & gameBoard{1,2}=='X' & gameBoard{1,1}== 1
        gameBoard{1,1}= 'O'
        disp(gameBoard)
        usedMoves= [usedMoves,1];
    elseif gameBoard{2,3}=='X' & gameBoard{3,2}=='X' & gameBoard{1,3}== 3
        gameBoard{1,3}= 'O'
        disp(gameBoard)
       usedMoves= [usedMoves,3];
    elseif gameBoard{2,3}=='X' & gameBoard{1,2}=='X' & gameBoard{1,1}== 1
        gameBoard{1,1}= 'O'
        disp(gameBoard)
        usedMoves= [usedMoves,1];
    else
        if gameBoard{3,2}== 8
        gameBoard{3,2}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,8];
        else
            gameBoard{1,1}= 'O';
            disp(gameBoard)
            usedMoves= [usedMoves,1];
        end
    end
end

%Player's Third Move
playerMove= input('Pick a spot 1-9: ');

%Checking if move is available
 if ismember(playerMove,usedMoves)
    disp('Pick a used spot again and YOU LOSE')
    playerMove= input('Pick a spot 1-9: ');
    if ismember(playerMove,usedMoves)%Include menu right here that forces them to quit out
            disp('You lose')
            return
    end
 end   
%save the move
usedMoves=[usedMoves,playerMove];

%complete the player's third move
    switch (playerMove)
        case 1
            gameBoard{1,1}= 'X';
            disp(gameBoard)
        case 2
            gameBoard{1,2}= 'X';
            disp(gameBoard)
        case 3
            gameBoard{1,3}= 'X';
            disp(gameBoard)
        case 4
            gameBoard{2,1}= 'X';
            disp(gameBoard)
        case 5
            gameBoard{2,2}= 'X';
            disp(gameBoard)
        case 6
            gameBoard{2,3}= 'X';
            disp(gameBoard)
        case 7
            gameBoard{3,1}= 'X';
            disp(gameBoard)
        case 8
            gameBoard{3,2}= 'X';
            disp(gameBoard)
        case 9
            gameBoard{3,3}= 'X';
            disp(gameBoard)
    end
    
%Check win condition for player
if gameBoard{1,1}=='X' & gameBoard{1,2}=='X' & gameBoard{1,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,3}=='X' & gameBoard{2,3}=='X' & gameBoard{3,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{3,1}=='X' & gameBoard{3,2}=='X' & gameBoard{3,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,1}=='X' & gameBoard{2,1}=='X' & gameBoard{3,1}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,1}=='X' & gameBoard{2,2}=='X' & gameBoard{3,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,3}=='X' & gameBoard{2,2}=='X' & gameBoard{3,1}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,2}=='X' & gameBoard{2,2}=='X' & gameBoard{3,2}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{2,1}=='X' & gameBoard{2,2}=='X' & gameBoard{2,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
end

%Computer's third move checking if it can win
if gameBoard{1,1} == 'O' & gameBoard{1,2} == 'O' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,2} == 'O' & gameBoard{1,3} == 'O' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,1} == 'O' & gameBoard{1,3} == 'O' & gameBoard{1,2}== 2
    gameBoard{1,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,1} == 'O' & gameBoard{2,2} == 'O' & gameBoard{2,3}== 6
    gameBoard{2,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,1} == 'O' & gameBoard{2,3} == 'O' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,2} == 'O' & gameBoard{2,3} == 'O' & gameBoard{2,1}== 4
    gameBoard{2,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{3,1} == 'O' & gameBoard{3,3} == 'O' & gameBoard{3,2}== 8
    gameBoard{3,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{3,1} == 'O' & gameBoard{3,2} == 'O' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{3,2} == 'O' & gameBoard{3,3} == 'O'& gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,1} == 'O' & gameBoard{3,1} == 'O' & gameBoard{2,1}== 4
    gameBoard{2,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,1} == 'O' & gameBoard{2,1} == 'O' & gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,1} == 'O' & gameBoard{3,1} == 'O' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,2} == 'O' & gameBoard{3,2} == 'O' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,2} == 'O' & gameBoard{2,2} == 'O' & gameBoard{3,2}== 8
    gameBoard{3,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,2} == 'O' & gameBoard{3,2} == 'O' & gameBoard{1,2}== 2
    gameBoard{1,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,3} == 'O' & gameBoard{3,3} == 'O' & gameBoard{2,3}== 6
    gameBoard{2,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,3} == 'O' & gameBoard{2,3} == 'O' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,3} == 'O' & gameBoard{3,3} == 'O' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,1} == 'O' & gameBoard{3,3} == 'O' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,1} == 'O' & gameBoard{2,2} == 'O' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,2} == 'O' & gameBoard{3,3} == 'O' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{3,1} == 'O' & gameBoard{1,3} == 'O' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,2} == 'O' & gameBoard{1,3} == 'O' & gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{3,1} == 'O' & gameBoard{2,2} == 'O' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
end

%Computer's third move if it can't win

if gameBoard{1,1} == 'X' & gameBoard{1,2} == 'X' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    usedMoves= [usedMoves,3];
    disp(gameBoard)

elseif gameBoard{1,2} == 'X' & gameBoard{1,3} == 'X' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    usedMoves= [usedMoves,1];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{1,3} == 'X' & gameBoard{1,2}== 2
    gameBoard{1,2}= 'O';
    usedMoves= [usedMoves,2];
    disp(gameBoard)
elseif gameBoard{2,1} == 'X' & gameBoard{2,2} == 'X' & gameBoard{2,3}== 6
    gameBoard{2,3}= 'O';
    usedMoves= [usedMoves,6];
    disp(gameBoard)
elseif gameBoard{2,1} == 'X' & gameBoard{2,3} == 'X' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    usedMoves= [usedMoves,5];
    disp(gameBoard)
elseif gameBoard{2,2} == 'X' & gameBoard{2,3} == 'X' & gameBoard{2,1}== 4
    gameBoard{2,1}= 'O';
    usedMoves= [usedMoves,4];
    disp(gameBoard)
elseif gameBoard{3,1} == 'X' & gameBoard{3,3} == 'X' & gameBoard{3,2}== 8
    gameBoard{3,2}= 'O';
    usedMoves= [usedMoves,8];
    disp(gameBoard)
elseif gameBoard{3,1} == 'X' & gameBoard{3,2} == 'X' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    usedMoves= [usedMoves,9];
    disp(gameBoard)
elseif gameBoard{3,2} == 'X' & gameBoard{3,3} == 'X'& gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    usedMoves= [usedMoves,7];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{3,1} == 'X' & gameBoard{2,1}== 4
    gameBoard{2,1}= 'O';
    usedMoves= [usedMoves,4];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{2,1} == 'X' & gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    usedMoves= [usedMoves,7];
    disp(gameBoard)
elseif gameBoard{2,1} == 'X' & gameBoard{3,1} == 'X' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    usedMoves= [usedMoves,1];
    disp(gameBoard)
elseif gameBoard{1,2} == 'X' & gameBoard{3,2} == 'X' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    usedMoves= [usedMoves,5];
    disp(gameBoard)
elseif gameBoard{1,2} == 'X' & gameBoard{2,2} == 'X' & gameBoard{3,2}== 8
    gameBoard{3,2}= 'O';
    usedMoves= [usedMoves,8];
    disp(gameBoard)
elseif gameBoard{2,2} == 'X' & gameBoard{3,2} == 'X' & gameBoard{1,2}== 2
    gameBoard{1,2}= 'O';
    usedMoves= [usedMoves,2];
    disp(gameBoard)
elseif gameBoard{1,3} == 'X' & gameBoard{3,3} == 'X' & gameBoard{2,3}== 6
    gameBoard{2,3}= 'O';
    usedMoves= [usedMoves,6];
    disp(gameBoard)
elseif gameBoard{1,3} == 'X' & gameBoard{2,3} == 'X' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    usedMoves= [usedMoves,9];
    disp(gameBoard)
elseif gameBoard{2,3} == 'X' & gameBoard{3,3} == 'X' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    usedMoves= [usedMoves,3];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{3,3} == 'X' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    usedMoves= [usedMoves,5];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{2,2} == 'X' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    usedMoves= [usedMoves,9];
    disp(gameBoard)
elseif gameBoard{2,2} == 'X' & gameBoard{3,3} == 'X' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    usedMoves= [usedMoves,1];
    disp(gameBoard)
elseif gameBoard{3,1} == 'X' & gameBoard{1,3} == 'X' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    usedMoves= [usedMoves,5];
    disp(gameBoard)
elseif gameBoard{2,2} == 'X' & gameBoard{1,3} == 'X' & gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    usedMoves= [usedMoves,7];
    disp(gameBoard)
elseif gameBoard{3,1} == 'X' & gameBoard{2,2} == 'X' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    usedMoves= [usedMoves,3];
    disp(gameBoard)
else
     %Computer's second move if it can't win or block opponent
    if gameBoard{1,1} == 1 & gameBoard{2,2} == 'X'
    gameBoard{1,1}= 'O';
    disp(gameBoard)
    usedMoves=[usedMoves,1];
    elseif gameBoard{1,3} == 3 & gameBoard{2,2} == 'X'
    gameBoard{1,3}= 'O';
    disp(gameBoard)
    usedMoves=[usedMoves,3];
    elseif gameBoard{3,1} == 7 & gameBoard{2,2} == 'X'
    gameBoard{3,1}= 'O';
    disp(gameBoard)
    usedMoves=[usedMoves,7];
    elseif gameBoard{3,3} == 9 & gameBoard{2,2} == 'X'
    gameBoard{3,3}= 'O';
    disp(gameBoard)
    usedMoves=[usedMoves,9];
    %When player didn't take middle first
    elseif gameBoard{1,2}=='X' & gameBoard{3,1}=='X' & gameBoard{2,3}== 6
        gameBoard{2,3}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,6];
    elseif gameBoard{1,2}=='X' & gameBoard{3,3}=='X' & gameBoard{2,1}== 4
        gameBoard{2,1}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,4];
    elseif gameBoard{3,2}=='X' & gameBoard{1,1}=='X' & gameBoard{2,3}== 6
        gameBoard{2,3}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,6];
    elseif gameBoard{3,2}=='X' & gameBoard{1,3}=='X' & gameBoard{2,1}== 4
        gameBoard{2,1}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,4];
    elseif gameBoard{2,1}=='X' & gameBoard{1,2}=='X' & gameBoard{1,1}== 1
        gameBoard{1,1}= 'O'
        disp(gameBoard)
        usedMoves= [usedMoves,1];
    elseif gameBoard{2,3}=='X' & gameBoard{3,2}=='X' & gameBoard{1,3}== 3
        gameBoard{1,3}= 'O'
        disp(gameBoard)
       usedMoves= [usedMoves,3];
    elseif gameBoard{2,3}=='X' & gameBoard{1,2}=='X' & gameBoard{1,1}== 1
        gameBoard{1,1}= 'O'
        disp(gameBoard)
        usedMoves= [usedMoves,1];
    else
        if gameBoard{3,2}== 8
        gameBoard{3,2}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,8];
        else
            gameBoard{1,1}= 'O';
            disp(gameBoard)
            usedMoves= [usedMoves,1];
        end
    end
end

%Player's fourth move
playerMove= input('Pick a spot 1-9: ');

%checking if move is available
 if ismember(playerMove,usedMoves)
    disp('Pick a used spot again and YOU LOSE')
    playerMove= input('Pick a spot 1-9: ');
    if ismember(playerMove,usedMoves)%Include menu right here that forces them to quit out
            disp('You lose')
            return
    end
 end   
         
%complete the player's fourth move
switch (playerMove)
        case 1
            gameBoard{1,1}= 'X';
            disp(gameBoard)
        case 2
            gameBoard{1,2}= 'X';
            disp(gameBoard)
        case 3
            gameBoard{1,3}= 'X';
            disp(gameBoard)
        case 4
            gameBoard{2,1}= 'X';
            disp(gameBoard)
        case 5
            gameBoard{2,2}= 'X';
            disp(gameBoard)
        case 6
            gameBoard{2,3}= 'X';
            disp(gameBoard)
        case 7
            gameBoard{3,1}= 'X';
            disp(gameBoard)
        case 8
            gameBoard{3,2}= 'X';
            disp(gameBoard)
        case 9
            gameBoard{3,3}= 'X';
            disp(gameBoard)
    end

%CHECK FOR WIN CONDITION
if gameBoard{1,1}=='X' & gameBoard{1,2}=='X' & gameBoard{1,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,3}=='X' & gameBoard{2,3}=='X' & gameBoard{3,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{3,1}=='X' & gameBoard{3,2}=='X' & gameBoard{3,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,1}=='X' & gameBoard{2,1}=='X' & gameBoard{3,1}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,1}=='X' & gameBoard{2,2}=='X' & gameBoard{3,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,3}=='X' & gameBoard{2,2}=='X' & gameBoard{3,1}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,2}=='X' & gameBoard{2,2}=='X' & gameBoard{3,2}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{2,1}=='X' & gameBoard{2,2}=='X' & gameBoard{2,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
end

%Computers fourth move checking if it can win
if gameBoard{1,1} == 'O' & gameBoard{1,2} == 'O' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,2} == 'O' & gameBoard{1,3} == 'O' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,1} == 'O' & gameBoard{1,3} == 'O' & gameBoard{1,2}== 2
    gameBoard{1,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,1} == 'O' & gameBoard{2,2} == 'O' & gameBoard{2,3}== 6
    gameBoard{2,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,1} == 'O' & gameBoard{2,3} == 'O' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,2} == 'O' & gameBoard{2,3} == 'O' & gameBoard{2,1}== 4
    gameBoard{2,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{3,1} == 'O' & gameBoard{3,3} == 'O' & gameBoard{3,2}== 8
    gameBoard{3,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{3,1} == 'O' & gameBoard{3,2} == 'O' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{3,2} == 'O' & gameBoard{3,3} == 'O'& gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,1} == 'O' & gameBoard{3,1} == 'O' & gameBoard{2,1}== 4
    gameBoard{2,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,1} == 'O' & gameBoard{2,1} == 'O' & gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,1} == 'O' & gameBoard{3,1} == 'O' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,2} == 'O' & gameBoard{3,2} == 'O' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,2} == 'O' & gameBoard{2,2} == 'O' & gameBoard{3,2}== 8
    gameBoard{3,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,2} == 'O' & gameBoard{3,2} == 'O' & gameBoard{1,2}== 2
    gameBoard{1,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,3} == 'O' & gameBoard{3,3} == 'O' & gameBoard{2,3}== 6
    gameBoard{2,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,3} == 'O' & gameBoard{2,3} == 'O' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,3} == 'O' & gameBoard{3,3} == 'O' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,1} == 'O' & gameBoard{3,3} == 'O' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{1,1} == 'O' & gameBoard{2,2} == 'O' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,2} == 'O' & gameBoard{3,3} == 'O' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{3,1} == 'O' & gameBoard{1,3} == 'O' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{2,2} == 'O' & gameBoard{1,3} == 'O' & gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
elseif gameBoard{3,1} == 'O' & gameBoard{2,2} == 'O' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    disp(gameBoard)
    disp('Computer Wins!')
    return
end

%Computer's fourth move blocking the player
if gameBoard{1,1} == 'X' & gameBoard{1,2} == 'X' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    usedMoves= [usedMoves,3];
    disp(gameBoard)

elseif gameBoard{1,2} == 'X' & gameBoard{1,3} == 'X' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    usedMoves= [usedMoves,1];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{1,3} == 'X' & gameBoard{1,2}== 2
    gameBoard{1,2}= 'O';
    usedMoves= [usedMoves,2];
    disp(gameBoard)
elseif gameBoard{2,1} == 'X' & gameBoard{2,2} == 'X' & gameBoard{2,3}== 6
    gameBoard{2,3}= 'O';
    usedMoves= [usedMoves,6];
    disp(gameBoard)
elseif gameBoard{2,1} == 'X' & gameBoard{2,3} == 'X' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    usedMoves= [usedMoves,5];
    disp(gameBoard)
elseif gameBoard{2,2} == 'X' & gameBoard{2,3} == 'X' & gameBoard{2,1}== 4
    gameBoard{2,1}= 'O';
    usedMoves= [usedMoves,4];
    disp(gameBoard)
elseif gameBoard{3,1} == 'X' & gameBoard{3,3} == 'X' & gameBoard{3,2}== 8
    gameBoard{3,2}= 'O';
    usedMoves= [usedMoves,8];
    disp(gameBoard)
elseif gameBoard{3,1} == 'X' & gameBoard{3,2} == 'X' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    usedMoves= [usedMoves,9];
    disp(gameBoard)
elseif gameBoard{3,2} == 'X' & gameBoard{3,3} == 'X'& gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    usedMoves= [usedMoves,7];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{3,1} == 'X' & gameBoard{2,1}== 4
    gameBoard{2,1}= 'O';
    usedMoves= [usedMoves,4];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{2,1} == 'X' & gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    usedMoves= [usedMoves,7];
    disp(gameBoard)
elseif gameBoard{2,1} == 'X' & gameBoard{3,1} == 'X' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    usedMoves= [usedMoves,1];
    disp(gameBoard)
elseif gameBoard{1,2} == 'X' & gameBoard{3,2} == 'X' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    usedMoves= [usedMoves,5];
    disp(gameBoard)
elseif gameBoard{1,2} == 'X' & gameBoard{2,2} == 'X' & gameBoard{3,2}== 8
    gameBoard{3,2}= 'O';
    usedMoves= [usedMoves,8];
    disp(gameBoard)
elseif gameBoard{2,2} == 'X' & gameBoard{3,2} == 'X' & gameBoard{1,2}== 2
    gameBoard{1,2}= 'O';
    usedMoves= [usedMoves,2];
    disp(gameBoard)
elseif gameBoard{1,3} == 'X' & gameBoard{3,3} == 'X' & gameBoard{2,3}== 6
    gameBoard{2,3}= 'O';
    usedMoves= [usedMoves,6];
    disp(gameBoard)
elseif gameBoard{1,3} == 'X' & gameBoard{2,3} == 'X' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    usedMoves= [usedMoves,9];
    disp(gameBoard)
elseif gameBoard{2,3} == 'X' & gameBoard{3,3} == 'X' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    usedMoves= [usedMoves,3];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{3,3} == 'X' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    usedMoves= [usedMoves,5];
    disp(gameBoard)
elseif gameBoard{1,1} == 'X' & gameBoard{2,2} == 'X' & gameBoard{3,3}== 9
    gameBoard{3,3}= 'O';
    usedMoves= [usedMoves,9];
    disp(gameBoard)
elseif gameBoard{2,2} == 'X' & gameBoard{3,3} == 'X' & gameBoard{1,1}== 1
    gameBoard{1,1}= 'O';
    usedMoves= [usedMoves,1];
    disp(gameBoard)
elseif gameBoard{3,1} == 'X' & gameBoard{1,3} == 'X' & gameBoard{2,2}== 5
    gameBoard{2,2}= 'O';
    usedMoves= [usedMoves,5];
    disp(gameBoard)
elseif gameBoard{2,2} == 'X' & gameBoard{1,3} == 'X' & gameBoard{3,1}== 7
    gameBoard{3,1}= 'O';
    usedMoves= [usedMoves,7];
    disp(gameBoard)
elseif gameBoard{3,1} == 'X' & gameBoard{2,2} == 'X' & gameBoard{1,3}== 3
    gameBoard{1,3}= 'O';
    usedMoves= [usedMoves,3];
    disp(gameBoard)
else
     %Computer's second move if it can't win or block opponent
    if gameBoard{1,1} == 1 & gameBoard{2,2} == 'X'
    gameBoard{1,1}= 'O';
    disp(gameBoard)
    usedMoves=[usedMoves,1];
    elseif gameBoard{1,3} == 3 & gameBoard{2,2} == 'X'
    gameBoard{1,3}= 'O';
    disp(gameBoard)
    usedMoves=[usedMoves,3];
    elseif gameBoard{3,1} == 7 & gameBoard{2,2} == 'X'
    gameBoard{3,1}= 'O';
    disp(gameBoard)
    usedMoves=[usedMoves,7];
    elseif gameBoard{3,3} == 9 & gameBoard{2,2} == 'X'
    gameBoard{3,3}= 'O';
    disp(gameBoard)
    usedMoves=[usedMoves,9];
    %When player didn't take middle first
    elseif gameBoard{1,2}=='X' & gameBoard{3,1}=='X' & gameBoard{2,3}== 6
        gameBoard{2,3}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,6];
    elseif gameBoard{1,2}=='X' & gameBoard{3,3}=='X' & gameBoard{2,1}== 4
        gameBoard{2,1}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,4];
    elseif gameBoard{3,2}=='X' & gameBoard{1,1}=='X' & gameBoard{2,3}== 6
        gameBoard{2,3}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,6];
    elseif gameBoard{3,2}=='X' & gameBoard{1,3}=='X' & gameBoard{2,1}== 4
        gameBoard{2,1}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,4];
    elseif gameBoard{2,1}=='X' & gameBoard{1,2}=='X' & gameBoard{1,1}== 1
        gameBoard{1,1}= 'O'
        disp(gameBoard)
        usedMoves= [usedMoves,1];
    elseif gameBoard{2,3}=='X' & gameBoard{3,2}=='X' & gameBoard{1,3}== 3
        gameBoard{1,3}= 'O'
        disp(gameBoard)
       usedMoves= [usedMoves,3];
    elseif gameBoard{2,3}=='X' & gameBoard{1,2}=='X' & gameBoard{1,1}== 1
        gameBoard{1,1}= 'O'
        disp(gameBoard)
        usedMoves= [usedMoves,1];
    else
        if gameBoard{3,2}== 8
        gameBoard{3,2}= 'O';
        disp(gameBoard)
        usedMoves= [usedMoves,8];
        else
            gameBoard{1,1}= 'O';
            disp(gameBoard)
            usedMoves= [usedMoves,1];
        end
    end
end

%Player's final move
playerMove= input('Pick a spot 1-9: ');

%Checking if move is available
 if ismember(playerMove,usedMoves)
    disp('Pick a used spot again and YOU LOSE')
    playerMove= input('Pick a spot 1-9: ');
    if ismember(playerMove,usedMoves)%Include menu right here that forces them to quit out
            disp('You lose')
            return
    end
 end   
%save the move
usedMoves=[usedMoves,playerMove];

%complete the player's final move
    switch (playerMove)
        case 1
            gameBoard{1,1}= 'X';
            disp(gameBoard)
        case 2
            gameBoard{1,2}= 'X';
            disp(gameBoard)
        case 3
            gameBoard{1,3}= 'X';
            disp(gameBoard)
        case 4
            gameBoard{2,1}= 'X';
            disp(gameBoard)
        case 5
            gameBoard{2,2}= 'X';
            disp(gameBoard)
        case 6
            gameBoard{2,3}= 'X';
            disp(gameBoard)
        case 7
            gameBoard{3,1}= 'X';
            disp(gameBoard)
        case 8
            gameBoard{3,2}= 'X';
            disp(gameBoard)
        case 9
            gameBoard{3,3}= 'X';
            disp(gameBoard)
    end
    
%Check win condition for player
if gameBoard{1,1}=='X' & gameBoard{1,2}=='X' & gameBoard{1,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,3}=='X' & gameBoard{2,3}=='X' & gameBoard{3,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{3,1}=='X' & gameBoard{3,2}=='X' & gameBoard{3,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,1}=='X' & gameBoard{2,1}=='X' & gameBoard{3,1}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,1}=='X' & gameBoard{2,2}=='X' & gameBoard{3,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,3}=='X' & gameBoard{2,2}=='X' & gameBoard{3,1}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{1,2}=='X' & gameBoard{2,2}=='X' & gameBoard{3,2}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
elseif gameBoard{2,1}=='X' & gameBoard{2,2}=='X' & gameBoard{2,3}=='X'
    disp(gameBoard)
    disp('YOU WIN')
    return
else
    disp(gameBoard)
    disp('A Tie!! Thank you for playing!')
    return
end


















    


