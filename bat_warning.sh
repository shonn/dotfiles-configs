#!/bin/bash

# critical battery in % (execute action)
CRITICAL_BATTERY="10"
# path to battery /sys
BATTERY_PATH="/sys/class/power_supply/BAT0/"
SLEEP="60"
EXPIRE_TIME="5000"

while [ true ]; do
  if [ -e "$BATTERY_PATH" ]; then
      BATTERY_ON=$(<$BATTERY_PATH/status)
      if [ "$BATTERY_ON" == "Discharging" ]; then
          CURRENT_BATTERY=$(cat $BATTERY_PATH/capacity)
          if [ "$CURRENT_BATTERY" -le "$CRITICAL_BATTERY" ]; then
              notify-send -u critical -t $EXPIRE_TIME "$CURRENT_BATTERY% power remaining."
          fi
      fi
  fi
  sleep $SLEEP
done
