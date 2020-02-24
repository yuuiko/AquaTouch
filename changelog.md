**Changelog 3.5.6**

----
**Compatibility**
Decreasing reliance on iCalBuddy through BTT native widgets. The QuickStrip icon highlight still needs iCalBuddy to operate for now.

[INCOMPLETE] Auto-Hide escape key on install for 16" macbooks.

----
**Improvements**
<br>
Music
- Album Art for Music is WORRKKINGG (Boy this was a hard one to fix)
- Move sync tools to Finder

Weather Widget
- Tapping a day in the weather widget opens dark sky in the web browser for further details.

AQT Settings and Preferences System
- I've redone a very large part of AQT's settings system using a different widget switching method so that it would be more efficient in runtime.

- Optimise Haptics Engine (now passive and don't check the database every time it clicks, now just changes when the user changes the setting)
- Optimise the Escape Key (buttons are now passive and don't check variables every 5 seconds)
- New settings for toggling Notification Badges! (secretly compatible with GoldenChaos's Database!)

This requires a more lengthy update process though, so the auto-update progress will be displayed in the AQT status display, or "welcome" display if you've been using AQT for a while.

----
**Bug Fixes**
- Notification Badges should now be aligned properly (again). 
- "New Update" alerts should now be live again.
- Fixed a bug that may cause the QuickPlay button to disappear.
