set AppleTVName to "Bedroom Apple TV"
set PlaylistName to "Alarm"

activate application "iTunes"
delay 0.2

tell application "System Events"
	tell application "iTunes"
		set visible of front browser window to true
		set the view of the front browser window to playlist PlaylistName
	end tell
	delay 0.2
	
	tell window "iTunes" of application process "iTunes"
		click button 10 of window "iTunes" of application process "iTunes" of application "System Events"
		key code 125 using {command down}
		delay 0.2
		keystroke return
		delay 0.2
		tell window "Multiple Speakers" of application process "iTunes" of application "System Events"
			activate
			
			tell table 1 of scroll area 1
				activate
				
				repeat with i from 1 to (count of every row)
					set rowcount to count of rows
					if rowcount > 1 then
						tell group 1 of row i
							activate
							if description of checkbox 1 as string = AppleTVName and value of checkbox 1 = 0 then
								click checkbox 1
								delay 0.2
							end if
						end tell
					end if
				end repeat
				
				repeat with i from 1 to (count of every row)
					set rowcount to count of rows
					if rowcount > 1 then
						tell group 1 of row i
							activate
							if description of checkbox 1 as string is not equal to AppleTVName and value of checkbox 1 = 1 then
								click checkbox 1
								delay 0.2
							end if
						end tell
					end if
				end repeat
				
			end tell
		end tell
	end tell
	
	tell window "Multiple Speakers" of application process "iTunes" of application "System Events"
		activate
		click button 3
	end tell
	
end tell

tell application "iTunes"
	set shuffle of playlist PlaylistName to 1
	play playlist PlaylistName
	set the sound volume to 80
end tell