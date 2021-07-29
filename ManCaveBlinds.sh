#!/bin/bash

# Script for controlling blinds using GPIO Zero.
# Usage: bash ManCaveBlinds.sh Set ManCaveBlinds TargetPosition 100 

if [ "$1" = "Get" ]; then
    if [ "$3" = "Name" ]; then
        echo "$2"
        exit 0
    fi
fi

if [ "$1" = "Set" ]; then
   if [ "$3" = "TargetPosition" ]; then
      if [ "$4" = "100" ]; then
         # Open blinds
         /var/lib/homebridge/Cmd4Scripts/man_cave_blinds.py open & 
      else
         # Close blinds
         /var/lib/homebridge/Cmd4Scripts/man_cave_blinds.py close & 
      fi
   fi
fi

STATE_OUTPUT=`/var/lib/homebridge/Cmd4Scripts/State.js $1 $2 $3 $4`
EXIT_CODE=$?
echo "$STATE_OUTPUT" 
exit $EXIT_CODE
