#!/bin/sh

nvidia-settings -a "[gpu:0]/GPUPowerMizerMode=1" &
exec dbus-launch --sh-syntax --exit-with-session bspwm
