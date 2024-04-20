#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "script Name : $0"
echo "Current working directory: $PWD"
echo "Home Directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Hostname : $HOSTNAME"
echo "Process ID of the current shell script: $$"  #give command sleep 60 #we can check in future what happend in this ID. search by giving command ps -ef(Process logs) 

sleep 60 & #( to send this(sleep) command to background we use & (ampersent) )
echo "Process ID of the last  background command: $!"  # to know wt was last background command used. ps -ef | grep sleep
echo "Exit status command: $?" #if 0 means already running, if n not equal to 0 then it is not running