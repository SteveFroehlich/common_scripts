#!/bin/bash
# cli_find_and_replace.sh
# source: https://superuser.com/questions/428493/how-can-i-do-a-recursive-find-and-replace-from-the-command-line

# Read from cli
	# echo "Find and replace in current directory!"
	# echo "File pattern to look for? (eg '*.txt')"
	# read filepattern
	# echo "Existing string?"
	# read existing
	# echo "Replacement string?"
	# read replacement

# get directly from cli args
# example usage: ./cli_find_and_replace.sh existingString replacementString
existing=$1
replacement=$2
filepattern=$3
path=$4

if [ -z "$path" ]
then
	path='.'
fi

if [ -z "$filepattern" ]
then
	filepattern='*'
fi

echo "Replacing all occurences of '$existing' with '$replacement' in files matching '$filepattern' in path '$path'"
find $path -type f -name $filepattern -print0 | xargs -0 sed -i '' -e "s/$existing/$replacement/g"
