#!/usr/bin/env sh

#cuts up audio at a random starting point and continues for a specified number of seconds.



#remove the previously existing
rm ${1}_seconds.mp3
let "starting_seconds=${RANDOM}%50"
let "ending_seconds=$starting_seconds+${1}"
let "duration=$ending_seconds - $starting_seconds"
ffmpeg -i output.mp3 -ss $starting_seconds -t $ending_seconds ${duration}_seconds.mp3 &> /dev/null
