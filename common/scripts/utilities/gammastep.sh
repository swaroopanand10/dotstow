#!/usr/bin/env bash
run=$(pgrep -l gammastep)

if [ -z "$run" ] ; then
  gammastep -O 3200K
else
  killall gammastep
fi
