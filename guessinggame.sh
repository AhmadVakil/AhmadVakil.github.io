#!/usr/bin/env bash
# File: guessinggame.sh

echo "Guess how many file(s) is available in this directory:"
read guessed

function getthecount {
  echo $(find . -maxdepth 1 -type f|wc -l)
}

while [[ $(getthecount) -ne $guessed ]]
do
  if ! [[ "$guessed" =~ ^[0-9]+$ ]]
  then
    echo "Only numbers accepted, guess a number:"
	read guessed
  elif [[ $(getthecount) -gt $guessed ]]
  then
    echo "The number is lower than expected value! guess a number again:"
    read guessed
  elif [[ $(getthecount) -lt $guessed ]]
  then
    echo "The number is greater than expected value! guess a number again:"
    read guessed
  fi
done

echo "Good guess! This directory contains $(getthecount) file(s)."