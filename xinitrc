#!/bin/bash

# Use "User Defined Session" in GDM with this

[[ -f $HOME/.Xdefaults ]] && xrdb -merge $HOME/.Xdefaults
[[ -f $HOME/.Xdefaults.local ]] && xrdb -merge $HOME/.Xdefaults.local
[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

export PATH="$HOME/bin:$PATH"
export SSH_ASKPASS=ssh-askpass

which gnome-settings-daemon && gnome-settings-daemon &
which volumeicon && volumeicon &
which gnome-power-manager && gnome-power-manager &
which nm-applet && nm-applet &

eval $(keychain --eval id_rsa)
eval $(gnome-keyring-daemon --start)
$HOME/bin/dbus_session.sh
exec i3
