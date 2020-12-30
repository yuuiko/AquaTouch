(*on write_to_file(this_data, target_file, append_data) -- (string, file path as string, boolean)
	try
		set the target_file to the target_file as text
		set the open_target_file to Â
			open for access file target_file with write permission
		if append_data is false then Â
			set eof of the open_target_file to 0
		write this_data to the open_target_file starting at eof
		close access the open_target_file
		return true
	on error
		try
			close access file target_file
		end try
		return false
	end try
end write_to_file
*)

tell application "Music"
	tell current track
		--try
		if exists (every artwork) then
			tell artwork 1
				set srcBytes to raw data
			end tell
		end if
	end tell
end tell

--try
set the target_file to (((path to desktop folder) as text) & "music_cover.jpg")
--set the open_target_file to open for access file target_file with write permission
set eof of the target_file to 0
write srcBytes to the target_file starting at eof
close access the target_file
return true
--on error
--	try
--		close access file target_file
--	end try
--	return false
--end try


(*
my WriteLog("Once upon a time in Silicon Valley...")

on WriteLog(the_text)
	set this_story to the_text
	set this_file to (((path to desktop folder) as text) & "MY STORY")
	my write_to_file(this_story, this_file, true)
end WriteLog
*)