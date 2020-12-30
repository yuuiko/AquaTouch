tell application "BetterTouchTool"
	if is_app_running "Safari" then
		try
			tell application "Safari" to set currTab to URL of current tab of front window
		end try
	end if
	
	if is_app_running "Google Chrome" then
		try
			tell application "Google Chrome" to set currTab2 to URL of active tab of front window
		end try
	end if
	try
		if currTab contains "community.folivora.ai" then
			my autoopen("webWidgetIsOpen", "Open BTT Forums")
			return "BTT Forums"
		else if currTab2 contains "community.folivora.ai" then
			my autoopen("webWidgetIsOpen", "Open BTT Forums")
			return "BTT Forums"
		else
			return ""
		end if
	on error
		return ""
	end try
end tell

on autoopen(memoryvar, trigger)
	tell application "BetterTouchTool"
		set openstatus to get_string_variable memoryvar
		if openstatus is "true" then
			trigger_named trigger
		end if
	end tell
end autoopen