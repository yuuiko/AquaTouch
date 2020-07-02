**Changelog 3.6.0-b1**

**Optimisation**
-
- All Notification Badges and some simple widgets now run on javascript instead of AppleScript for much more power efficiency.
- All App-Checks use a new BTT method instead of AppleScript to increase power efficiency.
- Some scripts are now nested in conditional activation groups, so they won't run unless they need to.


**Web Widgets**
-
Web Widgets have undergone a stability overhaul and have been completely rewritten. 

- They now remember if you've had them open and won't reset on you, even if you switch to other tabs or apps,
- Supports chrome more stably, and it
- Doesn't get confused when you have both chrome and safari open at the same time.
- In addition, various other bugs with them have been fixed, such as disappearing back buttons and some buttons getting cut off.


**Core AQT**
- QuickStrip features that target specific apps should now target the right app more stably and responsively (especially QuickApps)

- QuickMedia - Right-Aligned media controls are more ergonomic
- QuickMedia - New Back Button Design for QuickPlay widgets

- QuickSchedules - Calendar button in QuickSchedules can now show all day events.

- QuickControls - Added Sidecar Toggle
- QuickControls - New Bluetooth Widgets - Assign any bluetooth device to it and quickly connect. If supported (e.g. airpods, apple mice and keyboard, beats), it will show its battery status too.

- QuickApps - New Clipboard Widget
- QuickApps - More scrolling space for app shortcuts

- Manuals have been proofread and re-written where needed. They also use images stored within the preset instead of externally online now!


**New App Support**
-
- New Unity Layout
- New Discord design with a new pinnable mini menu for muting / deafening from anywhere, and server jump buttons
- New Volume Control for Safari Youtube and it's web widget

- Brackets (did i note on this previously?)
- Check post if adobe XD is listed as a supported app
- Fixed up a few things in AfterEffects


**Bug Fixes**
-
- Netflix widget now actually works (i finally have access to it).
- Fixed Emoji widgets getting cut off on the left side when you have multiple notification badges showing.
- Fix Touch Bar unexpectedly closing or showing control strip for certain apps.


**Design Changes**
-
- New Settings UI design with more settings
- QuickPlay has a right-aligned media controls for less hand shifting.
- QUickPlay widgets have a new back button design that reduce hand shifting


**Behaviour Changes**
-
- Notification badges for Caprine, Chatty and Goofy have been removed in favour of the official messenger client for MacOS.

- With the introduction of the new connectivity view with bluetooth widgets, QuickStrip hold actions have changed. 
- Holding the switches instantly opens the bluetooth widgets. 
- Holding calendar now toggles Do not Disturb instead of opening notification centre. To access notification centre quickly, see [System Preferences → Trackpad] and use the trackpad gesture. To access Siri quickly, see [System Preferences → Siri] to use the "hold command-space" gesture.