try
	tell application "BetterTouchTool"
		tell application "System Events" to set frontApp to name of first process whose frontmost is true
		---- prevent app re-opening ----
		set safariopen to false
		set chromeopen to false
		if is_app_running "Safari" then
			set safariopen to true
		else if is_app_running "Webkit" then
			set safariopen to true
		end if
		if is_app_running "Google Chrome" then
			set chromeopen to true
		else if is_app_running "Google Chrome Canary" then
			set chromeopen to true
		else if is_app_running "Chromium" then
			set chromeopen to true
		end if
		---- prevent app re-opening ----
		if safariopen is true then
			if (frontApp = "Safari") or (frontApp = "Webkit") then
				tell application "Safari" to set currTab to URL of current tab of front window
				if currTab does not contain "mail.google" then
					tell application "BetterTouchTool" to trigger_named "Close Web Widget"
				end if
				return "Gmail  "
			else
				if chromeopen is true then
					if (frontApp = "Google Chrome") or (frontApp = "Google Chrome Canary") or (frontApp = "Chromium") then
						tell application "Google Chrome" to set currTab to URL of active tab of front window
						if currTab does not contain "mail.google" then
							tell application "BetterTouchTool" to trigger_named "Close Web Widget"
						end if
					end if
				end if
				return "Gmail  "
			end if
		end if
	end tell
	return "Gmail  "
on error
	return "Gmail  "
end try