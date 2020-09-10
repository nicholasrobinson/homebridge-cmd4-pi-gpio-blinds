#!/usr/bin/env python3

import sys
from gpiozero import LED
from time import sleep

# Note: Pinout
# https://i.stack.imgur.com/yHddo.png
GPIO_OPEN_PIN = 17 
GPIO_CLOSE_UP_PIN = 27 
GPIO_CLOSE_DOWN_PIN = 22 
GPIO_CHANNEL_PIN = 4 

DURATION = 0.25

if len(sys.argv) > 1:
  if sys.argv[1] == 'open':
    pin = GPIO_OPEN_PIN
  elif sys.argv[1] == 'close': 
    pin = GPIO_CLOSE_UP_PIN
  else:
    pin = GPIO_CLOSE_UP_PIN

  gpio = LED(pin)
  gpio.on()
  sleep(DURATION)
  gpio.off()
  sleep(DURATION)
  gpio.on()

else:
  print("Invalid arguments.")
  exit(1)

