# +------------+
# |            |
# | Workspaces |
# |            |
# +------------+

# ---------------------- Part 8: Workspaces Extra 8 ----------------------
bindsym $mod+8 mode "ws8"
bindsym $mod+Shift+8 mode "cws8"

set $ws8 "8:t0"
set $ws81 "81:t1"
set $ws82 "82:t2"
set $ws83 "83:t3"
set $ws84 "84:t4"
set $ws85 "85:t5"
set $ws86 "86:t6"
set $ws87 "87:t7"
set $ws88 "88:t8"
set $ws89 "89:t9"

# resize window (you can also use the mouse for that)
mode "ws8" {

	# extra switch/move to workspace
	bindsym 0 workspace number $ws8; mode "default"
	bindsym 1 workspace number $ws81; mode "default"
	bindsym 2 workspace number $ws82; mode "default"
	bindsym 3 workspace number $ws83; mode "default"
	bindsym 4 workspace number $ws84; mode "default"
	bindsym 5 workspace number $ws85; mode "default"
	bindsym 6 workspace number $ws86; mode "default"
 	bindsym 7 workspace number $ws87; mode "default"
 	bindsym 8 workspace number $ws88; mode "default"
 	bindsym 9 workspace number $ws89; mode "default"

	bindsym Escape mode "default"

}


mode "cws8" {

	bindsym 0 move container to workspace number $ws8; mode "default"
	bindsym 1 move container to workspace number $ws81; mode "default"
	bindsym 2 move container to workspace number $ws82; mode "default"
	bindsym 3 move container to workspace number $ws83; mode "default"
	bindsym 4 move container to workspace number $ws84; mode "default"
	bindsym 5 move container to workspace number $ws85; mode "default"
	bindsym 6 move container to workspace number $ws86; mode "default"
 	bindsym 7 move container to workspace number $ws87; mode "default"
 	bindsym 8 move container to workspace number $ws88; mode "default"
 	bindsym 9 move container to workspace number $ws89; mode "default"

	bindsym Escape mode "default"
}

