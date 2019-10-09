
--Make a touch bar notification badge for any app of your choice with BTT!
--Any app that displays the red notification badge on it's dock icon is supported.

----Step 1:
--Rename this widget above ↑

----Step 2:
set ExactNameOfYourApp to "The App Name"
--You can find this name by hovering over the app in the dock. Edit between the quotations.

----Step 3:
--set the [icon] and [color] of this widget

----Step 4:
--Click Save, and edit the [Assigned Action] of this trigger. Change it to [launch your app].

----Make Sure:
--Make sure that the widget is [Visible]. You should see a checkbox that says 'Enabled/Visible', check it on so it shows up in the touchbar.
--This checkbox can be found to the right of the BTT window.

----Step 5:
--If you want to make another one of these, simply copy and paste this widget to duplicate it then repeat the above steps.




tell application "BetterTouchTool" to set LCL_DNDStatus to get_string_variable "DNDStatus"
set activeApp to my getActiveApp()

--hide the badge while the app is active
if LCL_DNDStatus is "OFF" and activeApp is not equal to ExactNameOfYourApp then
	tell application ExactNameOfYourApp
		set badgeNumber to get_dock_badge_for ExactNameOfYourApp update_interval 3
		set handoffDevice to get_dock_badge_for ExactNameOfYourApp & "-handoff" update_interval 3
	end tell
	if badgeNumber is not missing value and handoffDevice is missing value then
		if application "WhatsApp" is running then
			return "{\"text\":\"" & badgeNumber & "\",\"font_size\": 15}"
		else
			return ""
		end if
	else if handoffDevice is not missing value then
		if handoffDevice contains "iPhone" then
			return "{\"text\":\"📱\",\"font_size\": 15}"
		else if handoffDevice contains "iPad" then
			return "{\"text\":\"⬛️\",\"font_size\": 15}"
		else if handoffDevice contains "watch" then
			return "{\"text\":\"⌚️\",\"font_size\": 15}"
		else if handoffDevice contains "Mac" then
			return "{\"text\":\"🖥\",\"font_size\": 15}"
		end if
	else
		return ""
	end if
else
	return ""
end if

on getActiveApp()
	tell application "System Events" to set activeApp to first process where it is frontmost
	return name of activeApp
end getActiveApp
