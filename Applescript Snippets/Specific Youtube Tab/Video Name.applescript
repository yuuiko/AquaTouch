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
					set state to ""
					try
						set state to do JavaScript [¬
							"document", ¬
							".querySelectorAll('div[class*=\"-mode\"]')[0]", ¬
							".className", ¬
							".match(/(playing|paused|ended)-mode/)[1]"] ¬
							as text
					on error
						set vidName to "YouTube"
					end try
					
					try
						set vidName to (do JavaScript "document.getElementsByTagName('title')[0].innerHTML" as text)
					on error
						set vidName to "YouTube"
					end try
					
					try
						if vidName is not "YouTube" then
							set theresult to (text 1 through -10 of vidName) -- & " | uploaded by " & channel
							set maxSize to 50
							
							if length of theresult is greater than maxSize then
								set theresult to text 1 thru (maxSize - 3) of theresult & "..."
							end if
							
							
							--FIX JSON BREAKING STUFF----------------
							set THESUBJECT to theresult
							
							-- Escape nasty JSON-breaking double quotes
							set aString to THESUBJECT
							set astid to AppleScript's text item delimiters
							set AppleScript's text item delimiters to quote
							set aString to text items of aString
							set AppleScript's text item delimiters to "\\" & quote
							set aString to aString as text
							set AppleScript's text item delimiters to astid
							-- Quotes have been vanquished
							set THESUBJECT to aString
							
							--escape "\" via find replace to "＼"			
							set prevTIDs to text item delimiters of AppleScript
							set text item delimiters of AppleScript to "\\"
							set subject to text items of THESUBJECT
							
							set text item delimiters of AppleScript to "＼"
							set THESUBJECT to subject as text
							set text item delimiters of AppleScript to prevTIDs
							--output
							
							
							set theresult to THESUBJECT
							--FIXED JSON BREAKING STUFF----------------
							
							
							set theresult to my replaceText("&amp;", "&", theresult) --call FindReplace Function
						end if
					on error
						tell application "BetterTouchTool" to set_string_variable "ShowNotPlayingMsg5" to "false"
						return "YouTube"
					end try
					
					
					--return theresult
					
					if state = "playing" then
						tell application "BetterTouchTool" to set_string_variable "ShowNotPlayingMsg5" to "false"
						return "{\"text\":\"" & theresult & "\",\"font_color\": \"255,255,255,255\"}"
					else if state = "paused" then
						tell application "BetterTouchTool" to set_string_variable "ShowNotPlayingMsg5" to "false"
						return "{\"text\":\"" & theresult & "\",\"font_color\": \"255,255,255,255\"}"
					else if state = "ended" then
						tell application "BetterTouchTool" to set_string_variable "ShowNotPlayingMsg5" to "false"
						return "{\"text\":\"Video Ended\",\"font_color\": \"255,255,255,255\"}"
					else
						tell application "BetterTouchTool" to set_string_variable "ShowNotPlayingMsg5" to "false"
						--tell application "BetterTouchTool" to set_string_variable "ShowNotPlayingMsg5" to "true"
						return "{\"text\":\"YouTube\",\"font_color\": \"255,255,255,255\"}"
					end if
				end if
			end tell
		end repeat
		
	end tell
end tell

on replaceText(find, replace, subject) --Find Replace Function
	--set subject to "a"
	set prevTIDs to text item delimiters of AppleScript
	set text item delimiters of AppleScript to find
	set subject to text items of subject
	
	set text item delimiters of AppleScript to replace
	set subject to subject as text
	set text item delimiters of AppleScript to prevTIDs
	
	return subject
end replaceText