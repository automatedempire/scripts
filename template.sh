#!/bin/bash
#This is a template copied to a new file for scripts using input with flags.
#Use 644 permissions for this file so it doesn't execute.
function _usage
{
    echo >&2 "Usage: $(basename $0) [-f filename]"
    exit 3
}

while getopts ":f:" opt
do
    case "$opt" in
      f) filename="$OPTARG";;
     \?) _usage;;
    esac
done
shift `expr $OPTIND - 1`

if [[ -z $filename ]]; then
    read -ep "File name: " filename
fi

#YOUR CODE HERE!
