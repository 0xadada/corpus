#!/usr/bin/env bash
# strip whitespace from files
# usage: clean.sh input output

rg -N . | \
  tr -s '\n' ' '