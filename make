#!/usr/bin/env bash

# Generate README.md
echo "# Guessing Game Project" > README.md
echo "" >> README.md
echo "This file was generated on: $(date)" >> README.md
echo "" >> README.md
echo "The guessinggame.sh file has the following number of lines:" >> README.md
echo "" >> README.md
echo "$(wc -l < guessinggame.sh) lines" >> README.md
