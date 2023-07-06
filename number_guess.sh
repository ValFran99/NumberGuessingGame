#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ))

echo -e "\nEnter your username:"
read USERNAME

# check if the username already exists

CHECK_USER=$($PSQL "SELECT username, games_played, best_game FROM user_info WHERE username='$USERNAME';")

if [[ -z $CHECK_USER ]]
then
  # if the query is empty, it means that the user doesn't exists, so add it
  INSERT_USER_RESULT=$($PSQL "INSERT INTO user_info(username, games_played, best_game) VALUES('$USERNAME', 0, 0)")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  echo -e "$CHECK_USER" | while IFS="|" read USER GAMES_PLAYED BEST_GAME
  do
    echo -e "\nWelcome back, $USER! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

NUMBER_OF_GUESSES=0

echo -e "\nGuess the secret number between 1 and 1000:"

until [[ $USER_INPUT == $RANDOM_NUMBER ]]
do
  read USER_INPUT
  NUMBER_OF_GUESSES=$(( NUMBER_OF_GUESSES + 1 ))
  if [[ ! $USER_INPUT =~ ^-?[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
  elif [[ $USER_INPUT -gt $RANDOM_NUMBER ]]
  then
    echo -e "\nIt's lower than that, guess again:"
    continue
  elif [[ $USER_INPUT -lt $RANDOM_NUMBER ]]
  then
    echo -e "\nIt's higher than that, guess again:"
    continue
  fi
done

echo -e "$CHECK_USER" | while IFS="|" read USER GAMES_PLAYED BEST_GAME
do
  GAMES_PLAYED=$(( GAMES_PLAYED + 1 ))
  if [[ $BEST_GAME -eq 0 || $BEST_GAME -gt $NUMBER_OF_GUESSES ]]
  then
    INSERT_INFO_RESULT=$($PSQL "UPDATE user_info SET games_played = $GAMES_PLAYED, best_game = $NUMBER_OF_GUESSES WHERE username='$USERNAME'")
  else
    INSERT_INFO_RESULT=$($PSQL "UPDATE user_info SET games_played = $GAMES_PLAYED WHERE username='$USERNAME'")
  fi
done

echo -e "\nYou guessed it in $NUMBER_OF_GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"
