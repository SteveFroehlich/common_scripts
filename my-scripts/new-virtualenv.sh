#!/bin/sh

# usage: ./new-virtualenv.sh my-env-name

if [ -n "$1" ]; then
  envName=$1
else
  echo "No environment name given. Please supply one ie: ./new-virtualenv.sh my-env-name"
fi

echo "creating new env: $envName"
virtualenv ~/.virtualenvs/$envName