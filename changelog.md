**Changelog 3.5.9a**

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


------------------
**TODO:**

> 🔴 - Dead Feature
> 
> 🟠 - Stabilisation
> 
> 🟡 - Optimisation
> 
> 🟢 - Requested / Wanted Feature
> 
> 🔵 - Configuration Check
> 
> 🟣 - Manuals Documentation Experience
> 
> ⚪️ - Check this
> 
> ✅ - Added to Changelog
>
> 🟥 - Needs BTT support

IMPORTANT [ordered]

- [x] 🔵✅ Implement new btt app-specific "Open touchbar with modifier" CAG setting 
- [x] 🔵✅ Check Touchbar Behaviour for each app. May have been reset

----

- [x] 🟡✅ Convert Notif Badges to Javascript
- [x] 🟡   Additionally convert simple toggle switches to JS? [mostly done]
- [x] 🟡✅ Convert App-Open Checking using BTT method instead of applescript [Widget only] 
      - ✅ Music
      - ✅ Music Widget
      - ✅ Spotify
      - ✅ Spotify Widget
      - ✅ Web widgets
      - ✅ Script Editor
      - ✅ Atom
      - ✅ Brackets
      - ✅ Quick Controls
      - ✅ Quick Play

----

- [x] 🟠✅ WiP Half-done Unity 
- [x] 🟠✅ WiP Half-done Ae 

----

- [x] 🔴✅ Dead Netflix 
- [x] 🔴✅ [BETA] Fix Bluetooth Widgets 

----

- [x] 🟠   Instant switch between web widgets when switching to another web widget supported site.
- [x] 🟠✅ FIX ALL WEB WIDGET AUTO-CLOSE TO NEW VERSION
- [x] 🟠✅ Pin all emoji widgets to lefts
- [x] 🔴✅ Add official messenger client notif badge to settings 
- [x] 🔴✅ Web Widget Back buttons fixed 
- [x] 🟠✅ Pinned discord doesn't show on gamemode I think. Seperate pinned widgets to another CAG?
- [x] 🟡 Move 1Keyboard to CAG.

----

- [x] 🟠⚪️ Change app commands (notification badges, quickapps) to "send keyboard shortcut to app"
- [x] 🔴⚪️ Check QuickMusic re-opening music

----

- [ ] 🔴 Check / Fix Music Love, Dislike, add to library buttons
- [x] 🟣 Elaborate that Brackets Needs Plugins Installed (will not show if plugin not installed)
- [x] 🟡 Web Widgets lag out safari. Check if it does to chrome too. [no reports, this was noticed in older version]

----

- [x] 🟠 optimise update scripts
- [ ] 🟠 stabilise Youtube Widget Setup Message
- [ ] 🟠 update gamemode install instructions
- [x] 🟣 Improve Manuals and Optimise Install experience [auto-BTT setup?]
- [x] 🟣 Document app-specific options (e.g. music) [can now see in settings]
- [x] 🟣 Offline Images for Manuals

----

- [x] ⚪️ Check forums for requests
- [x] ⚪️ Check fishtech's AQT review and do accordingly

- [ ] 🔵 Check Internal Version Variables and test update script
- [ ] 🔵 Check TouchBar Behaviour for each app. May have been reset AGAIN


------------------

**EXTRAS** [no order]

- Microsoft Edge
- 1Password
- language switch

- [ ] 🟢 Setting to switch QuickApps left side "Dock", "Recent Apps", "QuickActions Only"
- [ ] 🟢 Setting to change Calendar Service to user preferred service. Could be done using Update_Widget?
- [ ] 🟢 "Show dock/app switcher/none in apps" Setting
- [ ] 🟢 Gamemode widgets in QuickControls
- [ ] 🟣 Settings Tour for New Installs

- [ ] 🟥 Calendar Highlighting to native BTT (request feature)
- [ ] 🟥 [if possible] A widget that resets all CAG Behaviour if BTT messes it up

- [ ] 🟢 Add "Insert Date" to notes
- [ ] 🟢 ADD / VIEW mode for Ae Keyframes
- [ ] 🟢 Twitch and discord emote storage using paste-cells
- [ ] 🟢 Web Widget support for Opera, Chrome, Brave
- [ ] 🟢 https://community.folivora.ai/t/a-few-issues-with-v3-5-8/15095

- [ ] 🟢 Visual Studio Code and other app requests
- [ ] 🟢 Language Switcher

- [ ] 🟡 Convert App-Open Checking using BTT method [Actions]
      - Music 
      - Music Widget
      - Spotify
      - Spotify Widget
      - Youtube
      - Youtube Widget
      - Web widgets
      - Stickies
      - Script Editor
      - Atom
      - Brackets
      - Photo Booth
      - Quick Controls
      - Quick Play



