#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams;")
# dump the contents of games.csv with cat and feed it into a while loop
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != 'year' ]] # skip the first line of the csv file
  then
    #attempt to insert opponent and winner in teams (these are team names)
    # if it fails, it is because there is already a team with this name
    TEAM_NAME_EXISTS=$($PSQL "SELECT name FROM teams WHERE name='$WINNER';")
    if [[ -z $TEAM_NAME_EXISTS ]]
    then
      echo $($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
    fi
    TEAM_NAME_EXISTS=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT';")
    if [[ -z $TEAM_NAME_EXISTS ]]
      then
        echo $($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
    fi
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    echo $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);")
  fi
done

