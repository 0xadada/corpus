#!/usr/bin/env bash
# convert sentences to lines

sed -e :1 -e 's/\([.?!]\)[[:blank:]]\{1,\}\([^[:blank:]]\)/\1\
\2/;t1'