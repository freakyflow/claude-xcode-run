#!/bin/bash
RETURN_TO="${RETURN_TO:-Cursor}"
osascript -e 'tell application "System Events" to tell process "Xcode" to set frontmost to true'
sleep 0.5
osascript -e 'tell application "System Events" to tell process "Xcode" to keystroke "r" using command down'
sleep 0.5
osascript -e "tell application \"$RETURN_TO\" to activate"
