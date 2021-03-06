%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name: Isiah Turner
% Date: 10/15/2019
% Description: A tic-tac-toe board that uses cell arrays in order to form
% the board. Through the use of for/while loops, continued use of if/else statements and skills previously
% learned as well as practicing using the documentation I created a working tic-tac-toe game. The
% game allows the user to play a simple game of tic-tac-toe that is
% considered easy since the computer is just picking a random available
% space. This code was significantly smaller than the tic-tac-toe game than
% the previous assignment due to the use of loops. More nested loops would
% be used as complexity of the game increased due to change in difficulty,
% turn number, etc.


clc
clear
% Welcome message and prompt
disp('Welcome to the best Tic-Tac-Toe game of your life doooooooood!');%make it so they lose if they don't put in correct term%
disp('When picking a spot, 1=Top Left,2= Top Middle,3= Top Right,4= Left Middle,5= Middle,6= Right Middle,7= Bottom Left,8= Bottom Middle,9= Bottom Right')
confirm= input('Do you understand how to pick a spot? (Yes or No): ','s');
if strcmpi('yes',confirm)
    disp('Good!') 
else
    disp('1-3 is the first row, 4-6 is the second row and 7-9 is third row, understand now?');
    input('Do you understand how to pick a spot? (Yes or No): ','s');
    if strcmpi('yes',confirm)
        disp('Good!')
    else
        disp('Restart the game and carefully read again')
        return
    end
end

%Starting the game
prompt= input('Are you ready to play some sweet Tic-Tac-Toe?(Yes or No): ','s');

while strcmpi('yes',prompt)
    %Reset
    clc
    clear
    %Define Variables
    usedMoves=[];
    possibleMoves= [1:9];
%     computerOptions= setdiff(possibleMoves,usedMoves);
    %Set up gameboard
    gameBoard= {1,2,3;4,5,6;7,8,9};
    disp(gameBoard)
    %First 4 moves of game
        for i=1:2;
            playerMove= input('Pick a spot 1-9: ');
            floor(playerMove);
            if playerMove < 1 | playerMove > 9 
                disp('That number is not on the board, please pick one within range or you will lose!');
                playerMove= input('Pick a spot 1-9: ');
                floor(playerMove);
                if playerMove < 1 | playerMove > 9
                    disp('You lose')
                    %exit (make sure to uncomment this)
                else 
                end
            else 
            end
            
            %Checking for move availability
            if ismember(playerMove,usedMoves)
                disp('Pick a used spot again and YOU LOSE')
                playerMove= input('Pick a spot 1-9: ');
                if ismember(playerMove,usedMoves)
                    loser= menu('Should have listened, YOU LOSE',':(');
                    if loser==':(';
                        return
                    else
                    end
                    return
                end
            else
                usedMoves=[usedMoves,playerMove];
                computerOptions= setdiff(possibleMoves,usedMoves);
            end
            
            %Complete the move
            switch (floor(playerMove))
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
            
            %Computer Move
            compMove= randsample(computerOptions,1);
            usedMoves= [usedMoves,compMove];
            computerOptions= setdiff(possibleMoves,usedMoves);
            
            switch (compMove)
            case 1
                gameBoard{1,1}= 'O';
                disp(gameBoard)
            case 2
                gameBoard{1,2}= 'O';
                disp(gameBoard)
            case 3
                gameBoard{1,3}= 'O';
                disp(gameBoard)
            case 4
                gameBoard{2,1}= 'O';
                disp(gameBoard)
            case 5
                gameBoard{2,2}= 'O';
                disp(gameBoard)
            case 6
                gameBoard{2,3}= 'O';
                disp(gameBoard)
            case 7
                gameBoard{3,1}= 'O';
                disp(gameBoard)
            case 8
                gameBoard{3,2}= 'O';
                disp(gameBoard)
            case 9
                gameBoard{3,3}= 'O';
                disp(gameBoard)
            end
        end
        %Rest of moves including win conditions
        for j= 1:3
            playerMove= input('Pick a spot 1-9: ');
            floor(playerMove);
            if playerMove < 1 | playerMove > 9 
                disp('That number is not on the board, please pick one within range or you will lose!');
                playerMove= input('Pick a spot 1-9: ');
                floor(playerMove);
                if playerMove < 1 | playerMove > 9
                    disp('You lose')
                    %exit (make sure to uncomment this)
                else 
                end
            else 
            end
           %Checking if move is available
            if ismember(playerMove,usedMoves)
                disp('Pick a used spot again and YOU LOSE')
                playerMove= input('Pick a spot 1-9: ');
                if ismember(playerMove,usedMoves)
                    loser= menu('Should have listened, YOU LOSE',':(');
                    if loser==':(';
                        return
                    else
                    end
                    return
                end
            else
                usedMoves=[usedMoves,playerMove];
                computerOptions= setdiff(possibleMoves,usedMoves);
            end
            
            %complete the move
            switch (floor(playerMove))
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
            
            %Check Win Condition for Player
            if gameBoard{1,1}=='X' & gameBoard{1,2}=='X' & gameBoard{1,3}=='X'
                disp(gameBoard)
                disp('WOO HAH!! YOU WIN')
                break
            elseif gameBoard{1,3}=='X' & gameBoard{2,3}=='X' & gameBoard{3,3}=='X'
                disp(gameBoard)
                disp('WOO HAH!! YOU WIN')
                break
            elseif gameBoard{3,1}=='X' & gameBoard{3,2}=='X' & gameBoard{3,3}=='X'
                disp(gameBoard)
                disp('WOO HAH!! YOU WIN')
                break
            elseif gameBoard{1,1}=='X' & gameBoard{2,1}=='X' & gameBoard{3,1}=='X'
                disp(gameBoard)
                disp('WOO HAH!! YOU WIN')
                break
            elseif gameBoard{1,1}=='X' & gameBoard{2,2}=='X' & gameBoard{3,3}=='X'
                disp(gameBoard)
                disp('WOO HAH!! YOU WIN')
                break
            elseif gameBoard{1,3}=='X' & gameBoard{2,2}=='X' & gameBoard{3,1}=='X'
                disp(gameBoard)
                disp('WOO HAH!! YOU WIN')
                break
            elseif gameBoard{1,2}=='X' & gameBoard{2,2}=='X' & gameBoard{3,2}=='X'
                disp(gameBoard)
                disp('WOO HAH!! YOU WIN')
                break
            elseif gameBoard{2,1}=='X' & gameBoard{2,2}=='X' & gameBoard{2,3}=='X'
                disp(gameBoard)
                disp('WOO HAH!! YOU WIN')
                break
            end
            
            %Computer Move
            if sum(usedMoves)== 45
                disp('Oof a tie')
            else
                compMove= randsample(computerOptions,1);
                usedMoves= [usedMoves,compMove];
                computerOptions= setdiff(possibleMoves,usedMoves);
            end
            
            switch (compMove)
            case 1
                gameBoard{1,1}= 'O';
                disp(gameBoard)
            case 2
                gameBoard{1,2}= 'O';
                disp(gameBoard)
            case 3
                gameBoard{1,3}= 'O';
                disp(gameBoard)
            case 4
                gameBoard{2,1}= 'O';
                disp(gameBoard)
            case 5
                gameBoard{2,2}= 'O';
                disp(gameBoard)
            case 6
                gameBoard{2,3}= 'O';
                disp(gameBoard)
            case 7
                gameBoard{3,1}= 'O';
                disp(gameBoard)
            case 8
                gameBoard{3,2}= 'O';
                disp(gameBoard)
            case 9
                gameBoard{3,3}= 'O';
                disp(gameBoard)
            end
            
            %Check Win Condition for Computer
            if gameBoard{1,1}=='O' & gameBoard{1,2}=='O' & gameBoard{1,3}=='O'
                disp(gameBoard)
                disp('WOO HAH!! CPU WINS')
                break
            elseif gameBoard{1,3}=='O' & gameBoard{2,3}=='O' & gameBoard{3,3}=='O'
                disp(gameBoard)
                disp('WOO HAH!! CPU WINS')
                break
            elseif gameBoard{3,1}=='O' & gameBoard{3,2}=='O' & gameBoard{3,3}=='O'
                disp(gameBoard)
                disp('WOO HAH!! CPU WINS')
                break
            elseif gameBoard{1,1}=='O' & gameBoard{2,1}=='O' & gameBoard{3,1}=='O'
                disp(gameBoard)
                disp('WOO HAH!! CPU WINS')
                break
            elseif gameBoard{1,1}=='O' & gameBoard{2,2}=='O' & gameBoard{3,3}=='O'
                disp(gameBoard)
                disp('WOO HAH!! CPU WINS')
                break
            elseif gameBoard{1,3}=='O' & gameBoard{2,2}=='O' & gameBoard{3,1}=='O'
                disp(gameBoard)
                disp('WOO HAH!! CPU WINS')
                break
            elseif gameBoard{1,2}=='O' & gameBoard{2,2}=='O' & gameBoard{3,2}=='O'
                disp(gameBoard)
                disp('WOO HAH!! CPU WINS')
                break
            elseif gameBoard{2,1}=='O' & gameBoard{2,2}=='O' & gameBoard{2,3}=='O'
                disp(gameBoard)
                disp('WOO HAH!! CPU WINS')
                break
            end
        end
                    
        prompt= input('Do you want to play again?(Yes or No): ','s');
end
disp('Thank you for playing')
                      