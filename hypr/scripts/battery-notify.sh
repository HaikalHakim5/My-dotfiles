#!/bin/bash

NOTIFIED_CRITICAL=false

while true; do
  LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)
  STATUS=$(cat /sys/class/power_supply/BAT0/status)

  if [ "$STATUS" != "Charging" ]; then
    if [ "$LEVEL" -le 20 ] && [ "$NOTIFIED_CRITICAL" = false ]; then
      notify-send -u critical -i battery-caution "Battery Kritis!" "Sisa $LEVEL% — colok charger sekarang!"
      NOTIFIED_CRITICAL=true
    fi
  else
    NOTIFIED_CRITICAL=false
  fi

  sleep 60
done
