#!/usr/bin/env sh

#clean up after previous run
rm output.mp3

# create an mp3 of input text
say $1 -o output.aiff
lame -m m output.aiff output.mp3 --quiet

rm output.aiff
