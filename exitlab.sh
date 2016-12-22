#!/bin/bash
#exitLab
#
# example of exit status
# check for non-existent file
# exit status will be 2
# create file and check for it
#
ls xyzzy.345 > /dev/null
status='echo $?'
echo "status is $status"

# create the file and check again
# status will not be 0
touch xyzzy.345

ls xyzzy.345 > /dev/null 2>&1
status='echo $?'
echo "status is $status"

# remove the file
rm xyzzy.345

