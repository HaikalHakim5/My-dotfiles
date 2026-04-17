#!/bin/bash
pkill wl-paste

wl-paste --type text --watch bash -c "cliphist store && cliphist list | tail -n +11 | cut -f1 | cliphist delete" &
wl-paste --type image --watch bash -c "cliphist store && cliphist list | tail -n +11 | cut -f1 | cliphist delete"
