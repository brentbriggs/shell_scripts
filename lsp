#!/bin/zsh
#Prints out all executables in your path in order of path precidence.

#For every directory specified in your path
for entry in $path
do
    # If the entry is a directory
    if [[ -d $entry ]] then
        print -l $entry/*(*) #Uses * glob qualifier to select on executables
    fi
done
