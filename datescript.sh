#! /bin/bash

#Practice Script 1
#
# Write a script that upon invocation shows the time and date, lists all
# logged-in users, and gives the system uptime.
# The script then saves this information to a logfile.

#Variables

LOGFILE=script.log


#Get Information and store in $LOGFILE

{
  echo -e "________________________________________ \n"

  echo -e "Today is $(date).\n"

  echo -e "Current users: \n$(who).\n"

  echo -e "Total up time $(uptime).\n" 

} >>$LOGFILE

cat ./$LOGFILE

echo -e "Logfile s located at" /$LOGFILE/ ".\n"


exit 0
