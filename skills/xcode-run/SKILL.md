---
name: xcode-run
description: Trigger Xcode's Run (Cmd+R) from the terminal without leaving your editor. Use when the user wants to build and run their app in Xcode.
allowed-tools: Bash(./xcode-run.sh:*)
---

# Xcode Run

Sends Cmd+R to Xcode and returns focus to the user's editor.

## Instructions

Run this bash command:

```bash
./xcode-run.sh
```

The RETURN_TO environment variable controls which editor gets focus back. Defaults to Cursor. Users can set it to "Visual Studio Code", "Terminal", "Ghostty", "iTerm2", etc.

Example with custom editor: `RETURN_TO="Terminal" ./xcode-run.sh`
