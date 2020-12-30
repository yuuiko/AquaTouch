--VERSION: YUUIKO FUNCTIONISED

--1: GET STORED NAME / ASK TO SET NAME IF NOT PRESENT
tell application "BetterTouchTool"
	--attempt to get variable
	try
		set LclAirPodsName to get_string_variable "AirPodsWg_DevceName"
	end try
	
	--if AirPodsWg_DevceName has not been set
	if LclAirPodsName is missing value or LclAirPodsName is "" then
		tell application "BetterTouchTool" to trigger_named "Initialise AirPods Widget"
	else
		return my connectAirPods()
	end if
end tell

on connectAirPods() --Connect AirPods Function
	tell application "BetterTouchTool"
		--attempt to get AirPods variable
		try
			set LclAirPodsName to get_string_variable "AirPodsWg_DevceName"
		end try
	end tell
	
	activate application "SystemUIServer"
	tell application "System Events"
		tell process "SystemUIServer"
			-- Working CONNECT Script.  Goes through the following:
			-- Clicks on Bluetooth Menu (OSX Top Menu Bar)
			--    => Clicks on device based on variable name
			--      => Clicks on Connect Item
			set btMenu to (menu bar item 1 of menu bar 1 whose description contains "bluetooth")
			try
				tell btMenu
					click
					tell (menu item LclAirPodsName of menu 1)
						click
						if exists menu item "Connect" of menu 1 then
							click menu item "Connect" of menu 1
							return "Connecting..."
						else
							click menu item "Disconnect" of menu 1
						end if
					end tell
				end tell
				
			on error
				--error "connection" alert window 
				tell application "BetterTouchTool" to display dialog "AirPods Widget could not find your AirPods \"" & LclAirPodsName & "\".

- Make sure they are paired, then try again
- Enable the bluetooth menubar item
- Reset the AirPods widget and check device name" with title "AirPods Widget" with icon note buttons {"Reset Widget", "OK"} default button "OK"
				
				if the button returned of the result is "Reset Widget" then
					tell application "BetterTouchTool" to trigger_named "Reset AirPods Widget"
				else --if window pressed OK
					return
				end if
			end try
		end tell
	end tell
end connectAirPods

-- code templates and previous code found in non-functionised version due to massive lag.