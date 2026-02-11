Trigger Xcode's "Run" (Cmd+R) from the terminal and return focus to the editor.

Run this exact bash command:

```bash
./xcode-run.sh
```

Set the RETURN_TO env var to change which editor gets focus back (defaults to Cursor).

Example: `RETURN_TO="Terminal" ./xcode-run.sh`

Requires macOS Accessibility permissions for your terminal app (System Settings > Privacy & Security > Accessibility).
