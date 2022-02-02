try
	tell application "BetterTouchTool" to set controlTabURL to get_string_variable "QS_SelectedYouTubeTab"
	
	set found to false
	
	tell application "Safari"
		repeat with t in tabs of windows
			tell t
				if URL contains controlTabURL then
					tell t
						set found to true
						log "all good" & controlTabURL
						return ""
					end tell
				end if
			end tell
		end repeat
	end tell
	
	if found is false then
		
		set listOfYoutubeTabs to {}
		
		set str to "" as string
		
		
		tell application "BetterTouchTool"
			tell application "Safari"
				
				--collect youtube tabs
				repeat with t in tabs of windows
					tell t
						if URL starts with "https://www.youtube.com/watch" then
							set currentFileName to URL
							copy currentFileName to the end of listOfYoutubeTabs
						end if
					end tell
				end repeat
				log listOfYoutubeTabs
				
				set controlTabURL to item 1 of listOfYoutubeTabs
				log "SET TO " & controlTabURL
				
				tell application "BetterTouchTool" to set_string_variable "QS_SelectedYouTubeTab" to controlTabURL
				
			end tell
		end tell
	end if
	
on error
	return "Error with Tab Sensing"
end try
