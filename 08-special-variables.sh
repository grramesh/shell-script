#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "script Name : $0"
echo "Current working directory: $PWD"
echo "Home Directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Hostname : $HOSTNAME"
echo "Process ID of the current shell script: $$"

sleep 60 &
echo "Process ID of the last  background command: $!"
echo "Exit status command: $?" #if 0 means already running, if n not equal to 0 then it is not running