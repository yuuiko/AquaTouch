**Welcome to AquaTouch 3.6 beta!**
=

To install, just download [here](https://github.com/yuuiko/AquaTouch/blob/master/Alpha%20versions/3-5-9/AquaTouch%20v3.6.0-b1.bttpresetzip) and open it with BTT.
-

With v3.6, I've re-done a heap of AQT's workings to get it much less buggy and much more power efficient. Many old scripts have been updated to use newer, more efficient BTT APIs and javascript! With this also comes large improvements to the many small details of AQT.

Note: As this is a beta, the white welcome screen will show there's a new update for v3.5.8 (the current public version). This is normal as the beta has a newer version number than the public version, you can just ignore this detail.

Time for the good stuff!

**Optimisation**
-
- All Notification Badges and most simple widgets now run on javascript instead of AppleScript for much more power efficiency.
- Use a new BTT method instead of AppleScript to check for running apps with increased power efficiency.
- Some scripts are now nested in conditional activation groups, so they won't even run unless they need to.

- I see AQT idling at around 3% CPU usage! down 50% from the 6% idle I had a few versions ago. (was not scientifically tested)


**Web Widgets**
-
Web Widgets have undergone a stability overhaul and have been completely rewritten. 

- They now remember if you've had them open and won't reset or close on you, even if you switch to other tabs or apps,
- supports chrome much more stably, and it
- doesn't get confused when you have both chrome and safari open at the same time.
- In addition, various other bugs with them have been fixed, such as disappearing back buttons and some buttons getting cut off.


**Core AQT**
- QuickStrip actions that target specific apps should now target the right app more stably and responsively (especially QuickApps)

- QuickMedia - Right-Aligned media controls are more ergonomic, reducing your hand and arm movement.
- QuickMedia - New Back Button Design for QuickPlay widgets, again more ergonomic.

- QuickSchedules - Calendar button in QuickSchedules can now show all day events.

- QuickControls - Added Sidecar Toggle.
- QuickControls - New Bluetooth Widgets - Assign any bluetooth device to it and quickly connect. If supported (e.g. airpods, apple mice and keyboard, beats), it will show battery status too!

- QuickApps - New Clipboard Manager Widget
- QuickApps - More scrolling space for app shortcuts.

- Manuals have been proofread and re-written. They also use images stored within the preset, so if you have no internet they'll still show!
- New Settings UI design with categorised settings

- Initial install should be much faster with significantly less device-freezing lag.


**New App Support**
-
- New Discord design with a new pinnable mini menu for muting / deafening from anywhere, and server jump buttons
- New Unity Layout

- New Volume Control for Safari Youtube and it's web widget

- Fixed up a few things in AfterEffects


**Bug Fixes**
-
- Netflix widget now actually works (i finally have access to it).
- Fixed Emoji view getting cut off on the left side when you have multiple notification badges showing.
- Fix Touch Bar unexpectedly closing or showing control strip for certain apps. (should be fixed, BTT often messes this one up.)


**Behaviour Changes**
-
- Notification badges for Caprine, Chatty and Goofy have been removed in favour of the official messenger client for MacOS.

- With the introduction of the new connectivity view with bluetooth widgets, QuickStrip hold actions have changed. 
- Holding the switches instantly opens the bluetooth widgets. 
- Holding calendar now toggles Do not Disturb instead of opening notification centre. To access notification centre quickly, see [System Preferences → Trackpad] and use the trackpad gesture. To access Siri quickly, see [System Preferences → Siri] to use the "hold command-space" gesture.
