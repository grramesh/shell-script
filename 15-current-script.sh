#!/bin/bash
COURSE="Devops from current script"
echo "Before calling other script course:$COURSE"
echo "Process ID of current shell script $$"

# ./16-other-script.sh #1st way after calling otherscript, PID are differnt and changes happened ohter script will not reflect in current script
source./16-other-script.sh #2nd way after calling other script, PID are same and changes happened ohter script will reflect in current script
echo "after calling other script course:$COURSE"

