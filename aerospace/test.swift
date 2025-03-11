import Cocoa

// Define the key code for Tab
let keyCode: CGKeyCode = 48

// Create the event source
let source = CGEventSource(stateID: .hidSystemState)

// Create the key down event
let keyEventDown = CGEvent(keyboardEventSource: source, virtualKey: keyCode, keyDown: true)
// Create the key up event
let keyEventUp = CGEvent(keyboardEventSource: source, virtualKey: keyCode, keyDown: false)

// Set the flags for the control and shift keys
keyEventDown?.flags = [.maskControl, .maskShift]
keyEventUp?.flags = []

// Post the events
keyEventDown?.post(tap: .cghidEventTap)
keyEventUp?.post(tap: .cghidEventTap)
