# lw
lw stands for live wallpaper, and as the name would suggest, let's you set live wallpapers on OS X.

### How it Works
lw works by placing a cocoa window in-between the desktop and desktop icon layers of the windowing system (`CGWindowLayerKey`). 
The window was stripped of some of its styling, like shadow and the title bar, and contains a NSView which contains a WebView. By now
I'd think you're starting to get it...? Hopefully...?

### Notes
This project is an experiment as I learn Cocoa programming. The code is probably considered "sloppy", and there's 
obvious energy concerns with having a WebView constantly running on the desktop. 

With that said, please understand that this project is anything *super* fancy, but just some code to play around with.

###### I can't remember where I got the icons, so &copy;<icon's author>