#!/bin/sh

# usage: ./new-virtualenv.sh my-env-name

if [ -n "$1" ]; then
  envName=$1
else
  echo "No environment name given. Please supply one ie: ./new-virtualenv.sh my-env-name"
fi

# this works on wmac
# python ~/virtualenv-15.0.3/virtualenv.py ~/virtual-envs/py3-ansi

#echo "creating new env: $envName"
#virtualenv ~/.virtualenvs/$envName


# py 3 impl
python3 -m venv ~/virtual-envs/$envName

echo 'activating new env: $envName'
source ~/virtual-envs/$envName/bin/activate

