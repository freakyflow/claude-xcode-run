# claude-xcode-run

A Claude Code plugin that triggers Xcode's **Run** (Cmd+R) from the terminal and returns focus to your editor.

## Install

```
/plugin install fsalbrechter/claude-xcode-run
```

Or test locally:

```bash
claude --plugin-dir ./claude-xcode-run
```

## Usage

In Claude Code, type:

```
/xcode-run:xcode-run
```

This will:
1. Briefly focus Xcode
2. Send Cmd+R to build & run
3. Return focus to your editor

## Configuration

Set the `RETURN_TO` env var to control which editor gets focus back:

```bash
# Default: Cursor
export RETURN_TO="Cursor"

# VS Code
export RETURN_TO="Visual Studio Code"

# Terminal
export RETURN_TO="Terminal"

# Ghostty
export RETURN_TO="Ghostty"
```

## Requirements

- macOS
- Xcode open with a project/scheme selected
- Terminal app granted **Accessibility** permissions (System Settings > Privacy & Security > Accessibility)
