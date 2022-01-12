# +------------+
# |            |
# | Workspaces |
# |            |
# +------------+

# ---------------------- Part 8: Workspaces Extra 2 ----------------------
bindsym $mod+2 mode "ws2"; workspace number $ws2
bindsym $mod+Shift+2 mode "cws2"

set $ws2 "2"
set $ws21 "21"
set $ws22 "22"
set $ws23 "23"
set $ws24 "24"
set $ws25 "25"
set $ws26 "26"
set $ws27 "27"
set $ws28 "28"
set $ws29 "29"

# resize window (you can also use the mouse for that)
mode "ws2" {

	# extra switch/move to workspace
	bindsym 0 workspace number $ws2; mode "default"
	bindsym 1 workspace number $ws21; mode "default"
	bindsym 2 workspace number $ws22; mode "default"
	bindsym 3 workspace number $ws23; mode "default"
	bindsym 4 workspace number $ws24; mode "default"
	bindsym 5 workspace number $ws25; mode "default"
	bindsym 6 workspace number $ws26; mode "default"
 	bindsym 7 workspace number $ws27; mode "default"
 	bindsym 8 workspace number $ws28; mode "default"
 	bindsym 9 workspace number $ws29; mode "default"

	bindsym Escape mode "default"

}


mode "cws2" {

	bindsym 0 move container to workspace number $ws2; mode "default"
	bindsym 1 move container to workspace number $ws21; mode "default"
	bindsym 2 move container to workspace number $ws22; mode "default"
	bindsym 3 move container to workspace number $ws23; mode "default"
	bindsym 4 move container to workspace number $ws24; mode "default"
	bindsym 5 move container to workspace number $ws25; mode "default"
	bindsym 6 move container to workspace number $ws26; mode "default"
 	bindsym 7 move container to workspace number $ws27; mode "default"
 	bindsym 8 move container to workspace number $ws28; mode "default"
 	bindsym 9 move container to workspace number $ws29; mode "default"

	bindsym Escape mode "default"
}

