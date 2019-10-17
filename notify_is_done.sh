# The purpose of this script is to show UI notification 
# when specified condition is match (task is done, site is up etc)
#
# Works only on MacOS

#!/bin/bash

#CONDITION="aws rds wait db-instance-available --db-instance-identifier %ID%  > /dev/null 2>&1"
#CONDITION="curl -fsS %DOMAIN%  > /dev/null 2>&1"

MESSAGE="Finished"
TIMEOUT=5

while true
do
	if [ "$CONDITION" ]
	then
		osascript -e 'display notification "'"$MESSAGE"'" with title "Bash Task Watcher"'
		exit 0
	fi
	sleep $TIMEOUT
done
