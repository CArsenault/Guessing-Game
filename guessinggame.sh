#!usr/bin/env bash
#guessinggame.sh

function open {
  echo "Let's play a game"
  echo "How many files are there in the current directory?"
  echo "Enter your guess:"
}

answer=$( ls -l | grep -v / | wc -l )

guess=-1
open

while [ "$guess" != "$answer" ]; do
    read guess
    if [ "$guess" = "$answer" ]; then
        echo -e "\aCongratulations! $guess is the correct answer!"
    elif [ "$answer" -gt "$guess" ]; then
        echo "There are more files than you guessed. Try again."
    else
        echo "There are fewer files than you guessed. Try again."
    fi
done

