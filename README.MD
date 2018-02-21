# Ghosted
Made by @andermorandev on twitter, /u/andermorandev on reddit
Follow me on twitter

$ shasum -a 256 Snapchat_v10.26.0_andermoran.ipa
a5db6c1c809eeb94972c0356101e45f8a278ce9d0c106aa7b9e41cb41d5a07cf


If you get an error like "the app was not installed on the iphone because you are not authorized":
- Make sure that you have the latest version of iTunes. From the menu bar at the top of your computer screen or at the top of the iTunes window, choose Account > Authorizations > Authorize This Computer.

## Installation via Mac
* Delete Snapchat on your iOS device
* Copy and paste the code below into Terminal
```bash
cd ~/Downloads
git clone https://github.com/andermoran/Ghosted-Jailed
cd Ghosted-Jailed
chmod +x install.sh
./install.sh
```
* Go into iTunes and select _Apps_ and then pick the _Library_ tab
* Drag the Snapchat app in your iTunes library onto your connected iOS device on the left side of iTunes. Snapchat should now be loaded onto your iOS device.
* Open Snapchat then quit the app (double tap home button and swipe up)
* Reopen Snapchat
* Done!

## Installation via Windows
* [Download and install iTunes 12.6.3.6](https://support.apple.com/en-us/HT208079) or lower
* Delete Snapchat on your iOS device
* [Download the zipped project from here](https://mega.nz/#F!n7RUFCCK!K2VYmrQ63JeP_TNsWBwspw)
* Unzip _Ghosted-Jailed.zip_
* Go into the _Ghosted-Jailed_ folder
* Go into iTunes and select _Apps_ and then pick the _Library_ tab
* Double click the .ipa or manually drag the .ipa file into your _Library_
* Drag the Snapchat app in your iTunes library onto your connected iOS device on the left side of iTunes. Snapchat should now be loaded onto your iOS device.
* Open Snapchat then quit the app (double tap home button and swipe up)
* Reopen Snapchat
* Done!


#### Extra
- How? I did this by patching the Snapchat binary
- Haven't posted a write up on how exactly I did this. DM me if you're interested and I'll make a write up