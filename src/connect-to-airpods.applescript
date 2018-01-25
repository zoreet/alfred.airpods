try
    tell application "System Events" to tell process "SystemUIServer"
		set bt to (first menu bar item whose description is "bluetooth") of menu bar 1
		click bt
		tell (first menu item whose title contains "audio") of menu of bt
			click
			tell menu 1
				if exists menu item "Connect" then
					click menu item "Connect"
				else
					key code 53
				end if
			end tell
		end tell
    end tell
on error errMsg
    display dialog errMsg & "\n\n" & "You need to add Alfred to System Preferences > Security & Privacy > Privacy > Accessibility, to allow it assistive access." with title "Error"
end try