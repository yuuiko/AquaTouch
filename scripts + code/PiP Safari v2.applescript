tell application "System Events" to tell process "Safari"
	set toolbarGroups to groups of toolbar 1 of front window
	
	repeat with aGroup in toolbarGroups
		if (count of buttons of aGroup) is equal to 4 then -- only the URL bar has 4 buttons when playing
			tell aGroup
				perform action "AXShowMenu" of button 3
				
				try
					click menu item "Enter Picture in Picture" of menu 1
				on error
					click menu item "Exit Picture in Picture" of menu 1
				end try
			end tell
		else if (count of buttons of aGroup) is equal to 3 then -- URL bar has 3 buttons when not playing
			tell aGroup
				
				key code 49 --space to play video to show butto n
				delay 1
				perform action "AXShowMenu" of button 3
				
				try
					click menu item "Enter Picture in Picture" of menu 1
				on error
					try
						click menu item "Exit Picture in Picture" of menu 1
					on error
						return "error"
					end try
				end try
			end tell
		end if
	end repeat
end tell