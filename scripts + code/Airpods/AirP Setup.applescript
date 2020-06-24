--VERSION: YUUIKO (AQT 3.5.9)

use framework "IOBluetooth"
use scripting additions

set deviceList to current application's IOBluetoothDevice's pairedDevices()
log deviceList
set devNames to (deviceList's valueForKey:"name") as list
log devNames

tell application "BetterTouchTool"
	try
		set LclOldAirPodsName to get_string_variable "AirPodsWg_DevceName"
	end try
end tell

-- first time insert name window
choose from list devNames with title "Setup AirPods Widget" OK button name "Set" cancel button name "Cancel" with prompt "Please select your AirPods to connect.
" default items LclOldAirPodsName without multiple selections allowed and empty selection allowed

if the result is not false then
	set SelectedDeviceName to item 1 of the result
	
	try
		--store BTT variable
		tell application "BetterTouchTool" to set_persistent_string_variable "AirPodsWg_DevceName" to SelectedDeviceName
		
	on error --error setting the variable
		--show error alert window 
		display dialog "There was an error while setting up the AirPods widget. 

Try again to connect your AirPods, or contact the developers \"GoldenChaos\" or \"yyuuiko\" at the BTT forums if the issue persists." with title "AirPods Widget" with icon note buttons {"OK"} default button "OK"
	end try
else
	return
end if


--VERSION: YUUIKO (AQT 3.5.8)

(*
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

*)
