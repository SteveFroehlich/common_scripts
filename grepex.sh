#!/bin/sh

# build --> gradle binaries. target --> maven binaries
grep $1 -rin --color=always . --exclude-dir={.git,.idea,build,target}
