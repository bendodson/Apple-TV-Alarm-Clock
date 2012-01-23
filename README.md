I was recently reading through some of my old blog posts when I discovered an article that is still fairly popular about controlling a mac mini via an iPhone. I had an old mac mini lying around and so installed it in my bedroom as a device which basically acted as an iTunes library and alarm clock. Times have changed though and I no longer have a mac mini in my bedroom; I have an Apple TV. With the recent news about iPhone alarm clocks failing to go off (again) and lots of hacking projects with AirPlay to try and stream more than just YouTube videos, I decided to work on something this evening I’ve been thinking about for a little while; turning my Apple TV into an Alarm Clock. The basic idea is that at a set time in the morning, the Apple TV will wake itself up automatically and start playing a set playlist from my shared iTunes library. The first step would be to get audio playlists working, but the ultimate goal would be to have video alarms as well. Thanks to a bit of AppleScript, I’ve managed to cook up a basic app to do just that.

So, how does one go about creating an AirPlay Alarm Clock? First of all, you will need a mac that is turned on with a shared iTunes library of content. The “turned on” bit can be automated from System Settings i.e. your machine can be asleep but told to wake up 5 minutes before your alarm is due to go off if you want to save energy. You will also need an AirPlay compatible device – this can be a set of speakers plugged into an Airport Express, one of the new AirPlay compatible iHome speaker systems, or an Apple TV. Please note that video playback will obviously only work on the Apple TV although you will get the audio from the video if you select an audio-only device.

Installation
============

Firstly, you’ll need to make a small tweak to your OS X setup: if you go into System Preferences and then Universal Access, you’ll need to enable access for assistive devices – this is so AppleScript can make keypresses on your behalf.

Now, edit the first two lines in AppleScript Editor so that the variables match the name of your device and your playlist. Once that is done, you can save the script as an application. To get the alarm to play automagically in the mornings, you can open up iCal and create a new event (it can be recurring if you want a daily alarm). In the “alarm” section, there is a little known entry called “run script” which you can use to run an AppleScript at a specified time relative to the alarm. If you choose the script you saved, then it will automatically run at the allotted time. Simple!

**Warning**: This script is currently set to shuffle your playlist so that you don’t get the same song every morning. However, if you want to playback video, you have to disable the shuffling as iTunes doesn’t like playing shuffled video playlists over AirPlay for some reason. To do that, you need to edit the 3rd line from the bottom in the AppleScript to say “set shuffle of playlist PlaylistName to 0″.

License
=======

This work is licensed under a [Creative Commons Attribution 3.0 Unported License](http://creativecommons.org/licenses/by/3.0/).

