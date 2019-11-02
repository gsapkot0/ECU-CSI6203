#!/bin/bash
#The word Correct is changed to Right by using this command.
sed -i 's/correct/right/g' ../week6/GuessingGame.sh 
sed -rn 's/echo.*"(.*)"/\1/p' ../week6/*.sh > output.txt