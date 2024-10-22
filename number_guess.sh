
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(($RANDOM % 1000))
echo "Enter your username:"
read USERNAME

USER_RESULT=$($PSQL "SELECT games_played, best_game FROM users WHERE username='$USERNAME';")
if [[ -z $USER_RESULT ]] 
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo $USER_RESULT | while IFS="|" read GAMES_PLAYED BEST_GAME
  do
    echo $GAMES_PLAYED
  done
fi

echo -e "Guess the secret number between 1 and 1000:"
read NUMBER_GUESSED

if [[ ! $NUMBER_GUESSED =~ [0-9] ]]
then
    echo -e "That is not an integer, guess again:"
fi

if [[ $NUMBER_GUESSED -gt $SECRET_NUMBER ]]
then
    echo -e "It's lower than that, guess again:"
elif [[ $NUMBER_GUESSED -lt $SECRET_NUMBER ]]
    echo -e "It's higher than that, guess again:"
else
    echo -e "You guessed it in <number_of_guesses> tries. The secret number was <secret_number>. Nice job!"
fi