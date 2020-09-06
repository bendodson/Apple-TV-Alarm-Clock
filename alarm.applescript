set AirplayDeviceName to "Kitchen"
set PlaylistName to "5 Star Music"
set AirplayVolume to 100
set EnableShuffle to true

-- Ready up Music App
tell application "Music"
	activate
	set visible of front browser window to true
	set the view of the front browser window to playlist PlaylistName
	set shuffle enabled to EnableShuffle
end tell

-- Set up Airplay
tell application "Music"
	set AirplayNames to (get name of AirPlay devices)
	set AirplayDevices to (get AirPlay devices)
	set AirplayToPlay to {}
	repeat with i from 1 to length of AirplayNames
		if item i of AirplayNames as string = AirplayDeviceName then set end of AirplayToPlay to item i of AirplayDevices
	end repeat
	set current AirPlay devices to AirplayToPlay
end tell

-- Play the music
tell application "Music"
	play playlist PlaylistName
	set the sound volume to AirplayVolume
end tell