#!/bin/bash

# gets the ws of a certain window (by class)
# and move to it

win_ws=$(($(($(wmctrl -l | grep -i -m 1 $1 | cut -d " " -f3))) + 1))
i3-msg workspace number $win_ws