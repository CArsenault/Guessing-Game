#!usr/bin/env bash


date=$(ls -lh guessinggame.sh)

	touch README.md
	
	echo "The Guessing Game" >README.md
	echo "Created on:  $(date)" >>README.md
	echo "guessinggame.sh has `wc -l guessinggame.sh | egrep -o "[0-9]+"` lines." >> README.md

