#!/bin/bash

IFS=$'\n'

echo "Which feature do you fancy today: 6.4, 6.5, 6.6 ? "
read feature

cd ..
absolute_path=$(pwd)
cd Project01

## FEATURE 6.4
if [ "$feature" -eq 4 ]; then

	filesize=$( du -a -h $absolute_path/ | grep -v '^-' | sort -r -h )
	echo "$filesize"




## FEATURE 6.5
elif [ "$feature" -eq 5 ]; then

	echo "Which file extension would you like to search for:"

	read count

	number=$(find $absolute_path/  -type f -name "*.$count" )
	total=$(echo "$number" | wc -l)

	if [ -z "$number" ]; then
		echo "No such file found!"
	else

		echo "Number of files in repository is $total"
	fi


## FEATURE 6.6
elif [ "$feature" -eq 6 ]; then
	echo "Which word would you like to search for: ?"
	read word

	if [ ! -f  "$word.log" ]; then
        	touch "$word.log"                                                                                                                                                   else
        else
		touch "$word.log" > "$word.log"                                                                                                                                     fi
		search=$(find $absolute_path/ -type f -name "*.py")
		echo "$(grep -E '^#' $search | grep -w $word)" >> "$word.log"
	fi

else
	echo "Incorrect feature inputted, Please input (4), (5) or (6)"
	./project_analyze.sh
fi
