# Motivation

I wanted to integrate my Current Products Corp E-Wand blinds into HomeKit. 

I started by augmenting my E-Wand Remote Control with wiring to electrically simulate button presses. The wires were connected to a bank of electromagnetic relays, controlled by the GPIO pins on a RaspberryPi. Finally, a small script (`man_cave_blinds.py`) was written to control the relays.

This repository illustrates how a Cmd4 WindowCovering accessory can be used to invoke the control script and persist the updated state.

# Example config.json
```
...
    {
        "platform": "Cmd4",
        "name": "Cmd4",
        "accessories": [
            {
                "type": "WindowCovering",
                "displayName": "ManCaveBlinds",
                "currentPosition": 100,
                "targetPosition": 100,
                "positionState": "STOPPED",
                "stateChangeResponseTime": 3,
                "name": "Man Cave Blinds",
                "state_cmd": "/var/lib/homebridge/Cmd4Scripts/ManCaveBlinds.sh"
            }
        ]
   }
...
```

# References

https://currentproductscorp.com/products/e-wand
https://github.com/ztalbot2000/homebridge-cmd4
https://homebridge.io
