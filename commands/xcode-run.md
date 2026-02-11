Trigger Xcode's "Run" (Cmd+R) from the terminal and return focus to the editor.

Run this exact bash command:

```bash
RETURN_TO="${RETURN_TO:-Cursor}" && osascript -e 'tell application "System Events" to tell process "Xcode" to set frontmost to true' && sleep 0.5 && osascript -e 'tell application "System Events" to tell process "Xcode" to keystroke "r" using command down' && sleep 0.5 && osascript -e "tell application \"$RETURN_TO\" to activate"
```

Set the RETURN_TO env var to change which editor gets focus back (defaults to Cursor).

Requires macOS Accessibility permissions for your terminal app (System Settings > Privacy & Security > Accessibility).
