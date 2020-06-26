tell application "BetterTouchTool"
	if is_app_running "ColorSnapper2" then
		return " "
	else
		return ""
	end if
end tell