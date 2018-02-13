#!/usr/bin/bash
# File: guessinggame.sh 

count=$(ls | wc -l)

echo "Can you guess how may files are in the current directory?"

echo "Your guess is: "
read response 

function guess {
	if [[ $response -gt $count ]]
	then
		echo "Your answer is too high, guess again please"
	else 
		echo "Your answer is too low, guess again please"
	fi
	read response
}


while [[ $count -ne $response ]]
do 
	guess
done

echo "Conguratulations! $response is the correct answer!"