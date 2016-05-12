A few years ago, I wrote a [convoluted AppleScript](https://bendodson.com/weblog/2011/01/10/the-airplay-alarm-clock-turning-an-apple-tv-or-airport-express-into-an-alarm-clock-with-applescript/) that allowed me to use my Apple TV as an alarm clock. It worked by waking up iTunes, selecting a playlist, shuffling it, and then playing it via AirPlay. Unfortunately, it stopped working when iTunes 11 was released due to a number of changes to AppleScript support; there were also changes to OS X which prevented AppleScripts from launching via Calendar alerts.

Fast forward to today and I found myself needing this script again for a new project. After a bit of hacking around, I’ve managed to get the script fully updated for iTunes 11 and iTunes 12.

You can [read more about it on my website](https://bendodson.com/weblog/2016/05/12/airplay-alarm-clock-with-itunes-12/).

Installation
============

In order to get this working as an alarm, we have to jump through a number of hoops on OS X El Capitan. Firstly, we need to save our AppleScript as an application (after you’ve made any adjustments to your Airplay device name, playlist name, and the volume you want). You can do this by opening it within Script Editor and then choosing File > Export.

If you haven’t disabled the GateKeeper restrictions on your Mac, you will need to either Code Sign this app or grant an exception within the Security & Privacy settings after you have first tried to open it.

With the alarm exported, we now need to open up Automator and create a new Calendar Alarm. Find the Launch Application action and set that up to point to your newly exported alarm app. Finally, save this and you’ll find a new entry has appeared in your calendar; it will launch immediately thus starting off the iTunes alarm process. Simply copy and paste this alarm entry (or make it recurring) in order to set it to whatever times you want.

License
=======

This work is licensed under a [Creative Commons Attribution 3.0 Unported License](http://creativecommons.org/licenses/by/3.0/).

