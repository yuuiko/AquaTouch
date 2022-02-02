--tell application "BetterTouchTool" to set_string_variable "ControlYouTubeTab" to "1"

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
		log "SEARCH FOR " & controlTabURL
		
		repeat with i in tabs of windows
			tell i
				if URL starts with controlTabURL then
					
					--do youtube actions--
					
				end if
			end tell
		end repeat
		
	end tell
end tell