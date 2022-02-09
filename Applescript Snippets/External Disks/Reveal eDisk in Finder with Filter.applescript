set showdisknumber to 1

try
	tell application "Finder"
		
		--get all disks
		set num_ejectable to count of (every disk whose ejectable is true)
		if num_ejectable is greater than 0 then
			set listOfEDisks to (get name of every disk whose ejectable is true and name does not contain "Macintosh HD" and startup is false)
		end if
		
		
		
		
		--tag gibberish disks
		set listOfTaggedEDisks to listOfEDisks
		
		log "LIST BEFORE " & listOfTaggedEDisks
		
		repeat with a from 1 to length of listOfTaggedEDisks
			
			set theCurrentListItem to item a of listOfTaggedEDisks
			
			-- Process the current list item
			--log "current item: " & theCurrentListItem
			
			set thecommandstring to "echo \"" & theCurrentListItem & "\"|sed -e 's|[ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890]\\{8\\}-[ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890]\\{4\\}-[ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890]\\{4\\}-[ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890]\\{4\\}-[ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890]\\{12\\}|#TAGGED#&|'" as string
			
			--log thecommandstring
			set sedResult to do shell script thecommandstring
			
			
			set isgood to sedResult starts with "#TAGGED#"
			log "ITEM " & a & " IS " & sedResult
			log "===============TAG ITEM? " & isgood & "
		
"
			
			if sedResult starts with "#TAGGED#" then
				set item a of listOfTaggedEDisks to "#./SKIPPED/.#"
			end if
			
		end repeat
		
		log "LIST AFTER " & listOfTaggedEDisks
		
		
		
		
		
		
		--remove gibberish disks
		set listOfFilteredEDisks to {}
		set thePosition to -1
		
		repeat with a from 1 to length of listOfTaggedEDisks
			
			set theCurrentListItem to item a of listOfTaggedEDisks
			
			-- Process the current list item
			--log "current item: " & theCurrentListItem
			
			if item a of listOfTaggedEDisks does not start with "#./SKIPPED/.#" then
				
				set theItem to theCurrentListItem
				set theList to listOfFilteredEDisks
				
				set theListCount to length of theList
				
				if (thePosition * -1) is theListCount + 1 then
					set beginning of theList to theItem
				end if
				
				set thePosition to (thePosition - 1)
			else
				--do nothing
			end if
			
		end repeat
		
		--set theList to reverse of theList
		log "FINAL LIST: " & theList
		
		
		--if first item of listOfFilteredEDisks does not start with "#./SKIPPED/.#" then
		activate
		reveal item showdisknumber of theList
		
	end tell
on error
	return ""
end try

(*
	set listOfEDisks to (get name of every disk whose ejectable is true)
	activate
	reveal first item of listOfEDisks
*)
