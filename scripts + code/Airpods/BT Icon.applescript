set theinput to 8198
set theModel to (do shell script "printf \"0x%X\" " & theinput)

set iconFile to do shell script "/usr/libexec/PlistBuddy -c \"print " & theModel & ":ImageName\" /System/Library/Frameworks/IOBluetoothUI.framework/Versions/A/Resources/AssetPaths.plist"
set iconPath to "/System/Library/Frameworks/IOBluetoothUI.framework/Versions/A/Resources/" & iconFile
log iconPath

set batteryText to "This will get there"
set fontSize to 15
set icon to ""

return "{\"text\":\"" & batteryText & "\", \"icon_data\": \"" & icon & "\",\"icon_path\":\"" & iconPath & "\", \"font_size\": \"" & fontSize & "\"}"



-- 0x200F