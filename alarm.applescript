set AirplayDeviceName to "Kitchen"
set PlaylistName to "5 Star Music"
set AirplayVolume to 100

activate application "iTunes"

tell application "System Events"
	tell application "iTunes"
		set visible of front browser window to true
		set the view of the front browser window to playlist PlaylistName
	end tell
end tell

tell application "System Events"
	tell process "iTunes" to if exists then
		click menu item "Songs" of menu "Shuffle" of menu item "Shuffle" of menu "Controls" of menu bar 1
		click menu item "On" of menu "Shuffle" of menu item "Shuffle" of menu "Controls" of menu bar 1
	end if
end tell

tell application "iTunes"
	set AirplayNames to (get name of AirPlay devices)
	set AirplayDevices to (get AirPlay devices)
	set AirplayToPlay to {}
	repeat with i from 1 to length of AirplayNames
		if item i of AirplayNames as string = AirplayDeviceName then set end of AirplayToPlay to item i of AirplayDevices
	end repeat
	set current AirPlay devices to AirplayToPlay
end tell

tell application "iTunes"
	play playlist PlaylistName
	set the sound volume to AirplayVolume
end tell