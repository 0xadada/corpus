#!/usr/bin/env bash
# transform to plain text
# usage: transform.sh filename

pandoc "$1" -t plain