# ---------------------- Applications ---------------------- 
# start dmenu (a program launcher)
# bindsym $mod+d exec --no-startup-id dmenu_run
# start j4-dmenu-desktop (a program launcher)
bindsym $mod+d exec --no-startup-id j4-dmenu-desktop

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal

# workspace back and forth (with/without active container)
workspace_auto_back_and_forth no

# > cd /usr/share/applications; ls
bindsym $mod+o mode "open"
mode "open" {
		bindsym b exec virtualbox; mode "default"
        bindsym d exec dolphin; mode "default"
        bindsym s exec spectacle; mode "default"
		bindsym t exec qBittorent; mode "default"
        bindsym q exec qutebrowser; mode "default"
        bindsym v exec vivaldi-stable; mode "default"

        bindsym Escape mode "default"
}

