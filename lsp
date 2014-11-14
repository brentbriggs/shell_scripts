#!/bin/zsh
#Prints out all executables in your path in order of path precidence.

#For every directory specified in your path
for directory in $path
do
    # If the entry is a directory
    if [[ -d $directory ]] then
        for entry in $directory/*
        do
            if [[ -x $entry ]] then # if file is executable
                print $entry
            fi
        done
    fi
done
