# +------------+
# |            |
# | Workspaces |
# |            |
# +------------+

# ---------------------- Part 8: Workspaces Extra 4 ----------------------
bindsym $mod+4 mode "ws4"; workspace number $ws4
bindsym $mod+Shift+4 mode "cws4"

set $ws4 "4"
set $ws41 "41"
set $ws42 "42"
set $ws43 "43"
set $ws44 "44"
set $ws45 "45"
set $ws46 "46"
set $ws47 "47"
set $ws48 "48"
set $ws49 "49"

# resize window (you can also use the mouse for that)
mode "ws4" {

	# extra switch/move to workspace
	bindsym 0 workspace number $ws4; mode "default"
	bindsym 1 workspace number $ws41; mode "default"
	bindsym 2 workspace number $ws42; mode "default"
	bindsym 3 workspace number $ws43; mode "default"
	bindsym 4 workspace number $ws44; mode "default"
	bindsym 5 workspace number $ws45; mode "default"
	bindsym 6 workspace number $ws46; mode "default"
 	bindsym 7 workspace number $ws47; mode "default"
 	bindsym 8 workspace number $ws48; mode "default"
 	bindsym 9 workspace number $ws49; mode "default"

	bindsym Escape mode "default"

}


mode "cws4" {

	bindsym 0 move container to workspace number $ws4; mode "default"
	bindsym 1 move container to workspace number $ws41; mode "default"
	bindsym 2 move container to workspace number $ws42; mode "default"
	bindsym 3 move container to workspace number $ws43; mode "default"
	bindsym 4 move container to workspace number $ws44; mode "default"
	bindsym 5 move container to workspace number $ws45; mode "default"
	bindsym 6 move container to workspace number $ws46; mode "default"
 	bindsym 7 move container to workspace number $ws47; mode "default"
 	bindsym 8 move container to workspace number $ws48; mode "default"
 	bindsym 9 move container to workspace number $ws49; mode "default"

	bindsym Escape mode "default"
}

