#!/usr/bin/env bash
# File: guessinggame.sh

echo "This program will ask you to guess the number of files that are in the current directory."
numberoffiles=$(ls | wc -w )
guess=-1

function testguess {
	if [[ $guess -eq $numberoffiles ]] 
	then
		echo "Congratulations! You have guessed the correct number!"
	elif [[ $guess -gt $numberoffiles ]]
	then
		echo "Unfortunaely, your guess was too high.  Try to guess again!"
	else 
		echo "Unfortunaely, your guess was too low."
	fi
}

while [[ $guess -ne $numberoffiles ]]
do
	echo "To guess the number of files, type in a non-negative integer in decimal notation, then press Enter:"
	read guess
	echo "You entered $guess"

	testguess $guess
	
done
echo "Your success ends the program."
