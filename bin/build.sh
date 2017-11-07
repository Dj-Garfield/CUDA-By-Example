#!/bin/bash

# bash - How to truncate the second column from a dot (.)? - Unix & Linux Stack Exchange 
# https://unix.stackexchange.com/questions/30025/how-to-truncate-the-second-column-from-a-dot
# 
#FILENAME=$( echo $1 | cut -f2 -d/ )         # remove ./ before filename
#FILENAME=$( echo $FILENAME | cut -f1 -d. )  # remove .cu 

# 
# Manipulating Strings 
# http://tldp.org/LDP/abs/html/string-manipulation.html
# 
FILENAME=$1
echo $FILENAME
FILENAME="${FILENAME%.*}"       # Deletes shortest match of $substring from back of $string.
echo $FILENAME
FILENAME="${FILENAME##*/}"       # Deletes longest match of $substring from front of $string.
echo $FILENAME

nvcc -lglut -lGL $1 -o $FILENAME
