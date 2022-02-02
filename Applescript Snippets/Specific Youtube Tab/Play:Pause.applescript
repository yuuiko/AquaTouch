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
		
		set controlTabURL to the first item of listOfYoutubeTabs
		log "SEARCH FOR " & controlTabURL
		
		repeat with i in tabs of windows
			tell i
				if URL starts with controlTabURL then
					set logurl to URL
					log "CONTROLLING " & logurl
					
					set status to (do JavaScript "document.getElementById(\"movie_player\").getPlayerState();")
					try
						
						if status is 1 then
							tell i
								do JavaScript "document.getElementById(\"movie_player\").pauseVideo();"
							end tell
						else
							tell i
								do JavaScript "document.getElementById(\"movie_player\").playVideo();"
							end tell
						end if
						
					on error
						return "Not Playing"
					end try
					
				end if
			end tell
		end repeat
		
	end tell
end tell