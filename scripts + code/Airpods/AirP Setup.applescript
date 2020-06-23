--VERSION: YUUIKO (AQT 3.5.8)

tell application "BetterTouchTool"
	try
		set LclOldAirPodsName to get_string_variable "AirPodsWg_DevceName"
	end try
	
	-- first time insert name window
	set theResponse to display dialog "Reset AirPods Widget

Please provide the name of the AirPods that you wish to connect." with title "AirPods Widget" default answer LclOldAirPodsName with icon note buttons {"Cancel", "Set"} default button "Set" cancel button "Cancel"
	
	if the button returned of the result is "Set" then
		try
			--store BTT variable
			set_persistent_string_variable "AirPodsWg_DevceName" to (text returned of theResponse)
			
		on error --error setting the variable
			--show error alert window 
			display dialog "There was an error while setting up the AirPods widget. 

Try again to connect your AirPods, or contact the developers \"GoldenChaos\" or \"yyuuiko\" at the BTT forums if the issue persists." with title "AirPods Widget" with icon note buttons {"OK"} default button "OK"
		end try
	else
		if the button returned of the result is "Cancel" then
			return
		end if
	end if
	
end tell

