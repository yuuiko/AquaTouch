set targetTab to 1

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
		
		set controlTabURL to item targetTab of listOfYoutubeTabs
		log "SET TO " & controlTabURL
		
		tell application "BetterTouchTool" to set_string_variable "QS_SelectedYouTubeTab" to controlTabURL
		
	end tell
end tell