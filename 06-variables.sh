#!/bin/bash

movies=("inception" "pushpa" "pokiri")

# list always start from zero
# size of above array is 3
# index are 0,1,2
# list all is ---> @ 

echo "First movie is : ${movies[@]}"
echo "First movie is : ${movies[1]}"    
echo "last movie is : ${movies[2]}"