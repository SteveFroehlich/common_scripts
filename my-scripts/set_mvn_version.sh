#!/bin/sh

# example usage:
# $ ./set_mvn_version.sh 1.0.1-SNAPSHOT
# will set the version to 1.0.1-SNAPSHOT

new_version=$1

mvn versions:set -DnewVersion=$new_version

echo "removing backup pom files"
git status | grep -i backup | xargs rm
