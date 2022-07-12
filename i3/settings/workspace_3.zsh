# +------------+
# |            |
# | Workspaces |
# |            |
# +------------+

# ---------------------- Part 8: Workspaces Extra 3 ----------------------
bindsym $mod+3 mode "ws3"; workspace number $ws3
bindsym $mod+Shift+3 mode "cws3"

set $ws3 "3"
set $ws31 "31"
set $ws32 "32"
set $ws33 "33"
set $ws34 "34"
set $ws35 "35"
set $ws36 "36"
set $ws37 "37"
set $ws38 "38"
set $ws39 "39"

# resize window (you can also use the mouse for that)
mode "ws3" {

	# extra switch/move to workspace
	bindsym 0 workspace number $ws3; mode "default"
	bindsym 1 workspace number $ws31; mode "default"
	bindsym 2 workspace number $ws32; mode "default"
	bindsym 3 workspace number $ws33; mode "default"
	bindsym 4 workspace number $ws34; mode "default"
	bindsym 5 workspace number $ws35; mode "default"
	bindsym 6 workspace number $ws36; mode "default"
 	bindsym 7 workspace number $ws37; mode "default"
 	bindsym 8 workspace number $ws38; mode "default"
 	bindsym 9 workspace number $ws39; mode "default"

	bindsym Escape mode "default"

}


mode "cws3" {

	bindsym 0 move container to workspace number $ws3; mode "default"
	bindsym 1 move container to workspace number $ws31; mode "default"
	bindsym 2 move container to workspace number $ws32; mode "default"
	bindsym 3 move container to workspace number $ws33; mode "default"
	bindsym 4 move container to workspace number $ws34; mode "default"
	bindsym 5 move container to workspace number $ws35; mode "default"
	bindsym 6 move container to workspace number $ws36; mode "default"
 	bindsym 7 move container to workspace number $ws37; mode "default"
 	bindsym 8 move container to workspace number $ws38; mode "default"
 	bindsym 9 move container to workspace number $ws39; mode "default"

	bindsym Escape mode "default"
}
