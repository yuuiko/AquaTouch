--control Spotify playback directly and not something else

if application "Spotify" is running then
	tell application "Spotify"
		set playState to (player state as text)
		try
			playpause
		on error
			return "playState"
		end try
	end tell
else
	return "not running"
end if
