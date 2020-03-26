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
	noOfTimesDiceRoll=0
	while [ $playerCurrPos -lt $WINNING ]
	do
		diceValue=$((RANDOM%6 + 1 ))
		echo "Dice value is $diceValue"
		((noOfTimesDiceRoll++))
   	option=$((RANDOM % 3))
   	case $option in
      	$NO_PLAY)
         	echo "NO play.....";;
      	$SNAKE)
         	echo "snake......."
				if [ $(($playerCurrPos - $diceValue)) -lt 0 ]
				then
					playerCurrPos=$START
				else

	         	((playerCurrPos-=$diceValue))

				fi;;
			$LADDER)
         	echo "Ladder....."
				if [ $((playerCurrPos + $diceValue)) -le 100 ]
         	then
					((playerCurrPos+=$diceValue))
				fi;;

   	esac
   	echo "player current position : $playerCurrPos"
	done

	echo " no of times dice roll to win $noOfTimesDiceRoll "
}

play

