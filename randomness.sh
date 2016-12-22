#!/bin/bash
##
# randomExample will accept a word then return it back to the user with a 
# random number as part of the word. If no argument is given a usage message
# is returned. Can be used, for example, to provide ramdom files names.
# check to see if the user puts in the parameter.

if [ $# -eq 0 ]
then
     echo "Usage: randomExample word"
     exit 1
fi

randNumb=$RANDOM

echo "$1-$randNumb"

################################################################################
exit 0
