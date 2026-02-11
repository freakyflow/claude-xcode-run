---
name: xcode-run
description: Trigger Xcode's Run (Cmd+R) from the terminal without leaving your editor. Use when the user wants to build and run their app in Xcode.
allowed-tools: Bash(osascript:*)
---

# Xcode Run

Sends Cmd+R to Xcode and returns focus to the user's editor.

## Instructions

Run this bash command:

```bash
RETURN_TO="${RETURN_TO:-Cursor}" && osascript -e 'tell application "System Events" to tell process "Xcode" to set frontmost to true' && sleep 0.5 && osascript -e 'tell application "System Events" to tell process "Xcode" to keystroke "r" using command down' && sleep 0.5 && osascript -e "tell application \"$RETURN_TO\" to activate"
```

The RETURN_TO environment variable controls which editor gets focus back. Defaults to Cursor. Users can set it to "Visual Studio Code", "Terminal", "Ghostty", "iTerm2", etc.
