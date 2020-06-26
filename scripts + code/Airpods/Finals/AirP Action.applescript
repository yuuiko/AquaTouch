set widgetVariable to "BluetoothWg_2_Device"
set resetAction to "Reset Bluetooth Widget 2"

tell application "BetterTouchTool"
	try
		set LclAirPodsName to get_string_variable widgetVariable
	end try
	
	if LclAirPodsName is missing value or LclAirPodsName is "" then
		tell application "BetterTouchTool" to trigger_named resetAction
	else
		return my connectAirPods(LclAirPodsName, widgetVariable)
	end if
end tell

on connectAirPods(LclAirPodsName, widgetVariable) --Connect AirPods Function
	tell application "BetterTouchTool"
		try
			set LclAirPodsName to get_string_variable widgetVariable
		end try
	end tell
	
	--activate application "SystemUIServer"
	tell application "System Events"
		tell process "SystemUIServer"
			-- Working CONNECT Script.  Goes through the following:
			-- Clicks on Bluetooth Menu (OSX Top Menu Bar)
			--    => Clicks on device based on variable name
			--      => Clicks on Connect Item
			try
				set btMenu to (menu bar item 1 of menu bar 1 whose description contains "bluetooth")
				tell btMenu
					click
					tell (menu item LclAirPodsName of menu 1)
						click
						if exists menu item "Connect" of menu 1 then
							click menu item "Connect" of menu 1
							return LclAirPodsName & "
Connecting..."
						else
							click menu item "Disconnect" of menu 1
							return LclAirPodsName & "
Disconnecting..."
						end if
					end tell
				end tell
				
			on error
				
				----------------- error "connection" alert window ---------------
				display dialog "Bluetooth Widget could not find your device \"" & LclAirPodsName & "\".

- Make sure it is paired, then try again
- Enable the bluetooth menubar item in System Preferences
- Reset widget and check device name" with title "Bluetooth Widget" with icon note buttons {"Reset Widget", "OK"} default button "OK"
				
				----------------- error "connection" alert window ---------------
				
				if the button returned of the result is "Reset Widget" then
					tell application "BetterTouchTool" to trigger_named resetAction
				else --if window pressed OK
					return
				end if
			end try
		end tell
	end tell
	return
end connectAirPods