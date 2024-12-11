#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
SECRET_NUMBER=$((RANDOM % 1000 + 1))

GUESS_GAME() {

if [[ -z $1 ]]
then
echo -e "\nGuess the secret number between 1 and 1000:"
NUMBER_OF_GUESSES=1
else
(( NUMBER_OF_GUESSES++ ))
echo -e "\n$1"
fi

read GUESS
if [[ ! "$GUESS" =~ ^-?[0-9]+$ ]]
then
GUESS_GAME "That is not an integer, guess again:"
elif [[ $GUESS -gt $SECRET_NUMBER ]]
then
GUESS_GAME "It's lower than that, guess again:"
elif [[ $GUESS -lt $SECRET_NUMBER ]]
then
GUESS_GAME "It's higher than that, guess again:"
elif [[ $GUESS -eq $SECRET_NUMBER ]]
then

#ALMACENAR DATOS Y BEST GAME IF POSSIBLE
if [[ -z $USERNAME_EXISTS ]]
then
INSERT_USER=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$USERNAME',1,$NUMBER_OF_GUESSES)")

elif [[ $NUMBER_OF_GUESSES -lt $BEST_GAME ]]
then
UPDATE_USER=$($PSQL "UPDATE users SET games_played = games_played + 1, best_game = $NUMBER_OF_GUESSES WHERE username = '$USERNAME'")

else
UPDATE_GAMES=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE username = '$USERNAME'")

fi
echo You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!
fi

}

#: <<'EOF'
echo Enter your username:
read USERNAME
#CHEQUEAR SI EXISTE EL USUARIO
USERNAME_EXISTS=$($PSQL "SELECT user_id FROM users WHERE username ='$USERNAME'")
if [[ -n $USERNAME_EXISTS ]]
then
#BUSCAR GAMES PLAYED Y BEST GAME
GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username = '$USERNAME'")
BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username = '$USERNAME'")
echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
GUESS_GAME
else
#SI NO EXISTE
echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
GUESS_GAME
fi


#EOF
