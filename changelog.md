**Changelog 3.5.9a**

**Compatibility**
-


**Stability Improvements**
-
- QuickStrip features that target specific apps should now target the right app more stably and responsively (especially QuickApps)
- Calendar button in QuickSchedules now shows all day events

- All Notification Badges and some simple widgets now run on javascript instead of AppleScript for much more power efficiency.
- All App-Checks use a new BTT method instead of AppleScript to increase power efficiency.


**New Features**
-

**Core AQT**
- Added Sidecar Toggle
- New Clipboard Widget
- New Back Button Design for QuickPlay widgets
- New Bluetooth Widgets - Assign any bluetooth device to it and quickly connect. If supported (e.g. airpods, apple mice and keyboard, beats), it will show its battery status too.

**New Apps**
- New Unity Layout
- Brackets (did i note on this previously?)
- Check post if adobe XD is listed as a supported app

**New App Features**
- New Youtube Safari Volume Control
- New discord layout with a mini pinned discord menu for muting / deafening from anywhere.


**Bug Fixes**
-
- Finished off the half-complete Ae UI
- FInished off the half-complete Unity UI
- Netflix widget now works
- Broken AirPods, Beats and Gamepad upgraded to new bluetooth widgets

**Web Widgets**
- Some lost back buttons inside web widgets have been found.
- Web Widget Auto-Close and back button bugs should be fixed especially on chrome
- Web Widget Bug Fixed: If chrome and safari were open at the same time, some web widgets would not show up or be really glitchy


**Changes**
-
- Notification badges for Caprine, Chatty and Goofy have been removed in favour of the official messenger client for MacOS.
- With the introduction of the new connectivity view, QuickStrop hold actions have changed. Holding calendar now toggles Do not Disturb, while holding the switches instantly opens the bluetooth widgets. To access notification centre quickly, see trackpad system preferences and use the trackpad gesture. To access Siri quickly, see Siri in system preferences to use the "hold command-space" gesture.


**Design Changes**
- New Settings UI design with more settings
- QuickPlay has a right-aligned media controls for less hand shifting.
- QUickPlay widgets have a new back button design that reduce hand shifting


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
> 🔵 - COnfiguration Check
> 
> 🟣 - Manuals Documentation Experience
> 
> ⚪️ - Check this
> 
> 🟥 - Needs BTT support

IMPORTANT [ordered]

- [x] 🔵✅ Implement new btt app-specific "Open touchbar with modifier" CAG setting 
- [X] 🔵   Check Touchbar Behaviour for each app. May have been reset

----

- [x] 🟡✅ Convert Notif Badges to Javascript
- [ ] 🟡   Additionally convert simple toggle switches to JS? 
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
- [ ] 🔴✅[BETA] Fix Bluetooth Widgets 

----

- [ ] 🔴   Fix Music Love / Dislike buttons
- [ ] 🟠   Instant switch between web widgets when switching to another web widget supported site.
- [x] 🟠✅ FIX ALL WEB WIDGET AUTO-CLOSE TO NEW VERSION
- [x] 🔴✅ Web Widget Back buttons fixed 
- [ ] 🟠   Pin all emoji widgets to lefts
- [x] 🔴✅ Add official messenger client notif badge to settings 
- [x] 🟠✅ Pinned discord doesn't show on gamemode I think. Seperate pinned widgets to another CAG?

----

- [ ] 🟡 optimise script timings https://github.com/yuuiko/AquaTouch/issues/63 @wonjoonSeol
- [ ] 🟠 Optimise update scripts
- [ ] 🟡 Web Widgets feel pretty slow.
- [x] 🟡 Move 1Keyboard to CAG.


----

- [x] 🟠⚪️ Change app commands (notification badges, quickapps) to "send keyboard shortcut to app"
- [x] 🔴⚪️ Check QuickMusic re-opening music

----

- [ ] 🟣 Elaborate that Brackets Needs Plugins Installed
- [ ] 🟣 Improve Manuals and Optimise Install experience
- [ ] 🟣 Document app-specific options (e.g. music)
- [ ] 🟣 Offline Images for Manuals0

----

- [ ] ⚪️ Check forums for requests
- [ ] ⚪️ Check fishtech's AQT review and do accordingly
- [ ] 🟠 [if possible] A widget that resets all CAG Behaviour if BTT messes it up

- [ ] 🔵 Check Internal Version Variables and test update script
- [ ] 🔵 Check TouchBar Behaviour for each app. May have been reset AGAIN


------------------

**EXTRAS** [no order]

- [ ] 🟢 Setting to switch QuickApps left side "Dock", "Recent Apps", "QuickActions Only"
- [ ] 🟢 Setting to change Calendar Service to user preferred service. Could be done using Update_Widget?
- [ ] 🟢 "Show dock/app switcher/none in apps" Setting
- [ ] 🟣 Settings Tour for New Installs

- [ ] 🟥 Calendar Highlighting to native BTT (request feature)

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



