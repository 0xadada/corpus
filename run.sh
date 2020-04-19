#!/usr/bin/env bash
# runstrip whitespace from files
# usage: run.sh directory output.txt

find $1 -name "*.md" -exec ./pipeline.sh {} \;