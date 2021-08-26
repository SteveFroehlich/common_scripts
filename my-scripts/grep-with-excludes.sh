#!/bin/sh

# will search the directory excluding hard coded
# directories

regex=$1
search_dir=$2

# default to current dir
if [ -z "$search_dir" ]
then
	search_dir="."
fi

echo "searching for '$regex' in dir: $search_dir excluding [target,build,.git,.idea]"
grep $regex -rin --exclude-dir={target,build,.git,.idea} $search_dir
