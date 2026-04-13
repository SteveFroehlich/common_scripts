#!/bin/sh

# note the format of etime is: [[dd-]hh:]mm:ss

ps -Ao etime,pid,command | grep -i '[f]irefox' | sort -r | head -1

