#!/bin/bash -x

echo "~~~~~~~~~~~START SNAKE AND LADDER~~~~~~~~~~~~~~~~~~~~"

#CONSTANT
START=0
NO_PLAY=0
SNAKE=1
LADDER=2
WINNING=100
echo "starting position of player : $START"

playerCurrPos=$START
function play(){

	while [ $playerCurrPos -lt $WINNING ]
	do
		diceValue=$((RANDOM%6 + 1 ))
		echo "Dice value is $diceValue"

   	option=$((RANDOM % 3))
   	case $option in
      	$NO_PLAY)
         	echo "NO play.....";;
      	$SNAKE)
         	echo "snake......."
         	((playerCurrPos-=$diceValue));;
      	$LADDER)
         	echo "Ladder....."
         	((playerCurrPos+=$diceValue));;
   	esac
   	echo "player current position : $playerCurrPos"
	done
}

play

