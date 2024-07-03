#!/usr/bin/bash

hour=$(date +%H)

if [ $hour -ge 5 ] && [ $hour -lt 12 ]; then
    echo "Good morning!"
elif [ $hour -ge 12 ] && [ $hour -lt 17 ]; then
    echo "Good afternoon!"
elif [ $hour -ge 17 ] && [ $hour -lt 21 ]; then
    echo "Good evening!"
else
    echo "Good night!"
fi
