try
	tell application "BetterTouchTool"
		tell application "System Events" to set frontApp to name of first process whose frontmost is true
		log frontApp
		
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
		
		log safariopen
		log chromeopen
		---- prevent app re-opening ----
		
		
		if safariopen is true then
			if (frontApp = "Safari") or (frontApp = "Webkit") then
				using terms from application "Safari"
					tell application "Safari" to set currTab to name of current tab of front window
					log currTab
					if currTab does not contain "Gmail" then
						log "Close Safari"
						tell application "BetterTouchTool" to trigger_named "Close Web Widget"
					end if
				end using terms from
			else
				if chromeopen is true then
					if (frontApp = "Google Chrome") or (frontApp = "Google Chrome Canary") or (frontApp = "Chromium") then
						using terms from application "Google Chrome"
							tell application "Google Chrome" to set currTab to title of active tab of front window
							log currTab
							
							if currTab does not contain "Gmail" then
								log "Close Chrome"
								tell application "BetterTouchTool" to trigger_named "Close Web Widget"
							end if
						end using terms from
					end if
				end if
			end if
		end if
	end tell
	return "Gmail  "
on error
	log "error"
	return "Gmail  "
end try