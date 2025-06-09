#!/bin/bash

function count_files {
  echo $(ls -1 | wc -l)
}

file_count=$(count_files)

echo "Welcome to the guessing game!"
echo "Can you guess how many files are in the current directory?"

while true; do
  read -p "Enter your guess: " guess
  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
  elif [[ "$guess" -lt "$file_count" ]]; then
    echo "Too low."
  elif [[ "$guess" -gt "$file_count" ]]; then
    echo "Too high."
  else
    echo "Congratulations! You guessed correctly."
    break
  fi
done
