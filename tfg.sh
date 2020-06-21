#!/bin/bash

firefox https://youtu.be/Z6RPfXSRww4?t=120 &
sleep 5s
pkill -p firefox

dialog --msgbox 'Demo :)' 10 30
