#!/usr/bin/env bash
# convert sentences to lines

# shellcheck disable=SC1004 # intentially use a line-break
sed -e :1 -e 's/\([.?!]\)[[:blank:]]\{1,\}\([^[:blank:]]\)/\1\
\2/;t1'