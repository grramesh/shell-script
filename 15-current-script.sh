#!/bin/bash
COURSE="Devops from current script" #here COURSE is variable

echo "Before calling other shell script course:$COURSE"
echo "Process ID of current shell script: $$"

./16-other-script.sh

echo "After calling other shell script, course: $COURSE"

