#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

echo $($PSQL "TRUNCATE teams, games")

# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS=',' read year round winner opponent  winner_goals opponent_goals
do
 if [[ $year != "year" ]]
 then
      # insert winner team
      WINNER_TEAM_NAME=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
      if [[ -z $WINNER_TEAM_NAME ]]
      then
        INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES ('$winner')")
      fi

      OP_TEAM_NAME=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
      if [[ -z $OP_TEAM_NAME ]]
      then
        INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES ('$opponent')")
      fi
 fi
done

cat games.csv | while IFS=',' read year round winner opponent  winner_goals opponent_goals
do
  if [[ $year != "year" ]]
  then
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
      OP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
      INSERT_DATA=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($year, '$round', $WINNER_ID, $OP_ID, $winner_goals, $opponent_goals)")
  fi
done