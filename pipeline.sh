#!/usr/bin/env bash
./transform.sh $1 | ./clean.sh | ./split.sh
