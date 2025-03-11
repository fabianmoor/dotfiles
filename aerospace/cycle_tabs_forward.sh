#!/bin/bash
osascript <<EOF
try
  tell application "System Events"
    -- Press 'ctrl' + 'tab'
    keystroke (ASCII character 9) using {control down}
  end tell
on error errMsg number errNum
  -- Ensure the modifier keys are released in case of an error
  tell application "System Events"
    key up control
  end tell
end try
EOF
