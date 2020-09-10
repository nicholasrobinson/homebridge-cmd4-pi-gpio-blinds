#!/bin/bash

# Script for controlling blinds using GPIO Zero.
# Usage: bash ManCaveBlinds.sh Set ManCaveBlinds TargetPosition 100 

if [ "$1" = "Set" ]; then
   if [ "$3" = "TargetPosition" ]; then
      if [ "$4" = "100" ]; then
         # Open blinds
         /var/lib/homebridge/Cmd4Scripts/man_cave_blinds.py open 
      else
         # Close blinds
         /var/lib/homebridge/Cmd4Scripts/man_cave_blinds.py close 
      fi
   fi
fi

# Update state
echo `/var/lib/homebridge/Cmd4Scripts/State.js $@`
exit $?

