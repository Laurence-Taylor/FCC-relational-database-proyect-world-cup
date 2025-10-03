#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# Clean the Data Base
echo $($PSQL "TRUNCATE games, teams;")
# Go over each record of the .csv file
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNERGOALS OPPONENTGOALS
do
  # jump the first line of the .csv file because is just the heather
  if [[ $YEAR != "year" ]]
  then
    # get the winner_id (ID from team table)
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
    # if not found winner (in table Teams)
    if [[ -z $WINNER_ID ]]
    then
      # Insert new Team winner
      INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
      # if new winner was inserted in teams table
      if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
      then
        # printing message in console
        echo "Inserted into Teams ... " $WINNER
      fi
      # get new winner_id
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
    fi
    # get the opponent_id (ID frommthe team table)
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
    # if not found opponent (in table Teams)
    if [[ -z $OPPONENT_ID ]]
    then
      # Insert new Team opponent
      INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
      # if new opponent was inserted in teams table
      if [[ $INSERT_OPPONENT_RESULT == "INSERT 0 1" ]]
      then
        # print message in cosole
        echo "Inserted into Teams ... " $OPPONENT
      fi
      # get new opponent_id
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
    fi
    # insert into games
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games (winner_id, opponent_id, year, round, winner_goals, opponent_goals) VALUES($WINNER_ID, $OPPONENT_ID, $YEAR, '$ROUND', $WINNERGOALS, $OPPONENTGOALS);")
    # if was inserted into games
    if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
    then 
      # print message to console
      echo "Inserted into games ... " $WINNER VS $OPPONENT YEAR $YEAR ROUND $ROUND SCORE $WINNERGOALS - $OPPONENTGOALS
    fi
  fi
done
echo -e "\n"Data from TEAMS
echo "$($PSQL "SELECT * FROM teams;")"
echo -e "\n"Data from games
echo "$($PSQL "SELECT * FROM games;")"