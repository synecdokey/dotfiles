#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Use the dvorak layout in X
setxkbmap -layout us -variant dvorak-alt-intl -option "caps:escape"

# Load a resource database
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Turn off the hardware bell
xset -b

# Start the window manager
exec awesome
