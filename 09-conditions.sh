#!/bin/bash

# to check whether a number is -ge than  or not 
NUMBER=$1   
if [ $NUMBER -gt 10 ] #Space between brackets should be there
   then
       echo "Given number $NUMBER is > 10"
  else 
       echo "given number $NUMBER is  < 10"
  fi


  NUMBER=$1   
if [ $NUMBER -lt 25 ] #Space between brackets should be there
   then
       echo "Given number $NUMBER is < 25"
  else 
       echo "given number $NUMBER is  > 25"
  fi