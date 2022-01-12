# +------------+
# |            |
# | Workspaces |
# |            |
# +------------+

# ---------------------- Part 7: Workspaces Extra 1 ----------------------
bindsym $mod+1 mode "ws1"; workspace number $ws1
bindsym $mod+Shift+1 mode "cws1"

set $ws1 "1"
set $ws11 "11"
set $ws12 "12"
set $ws13 "13"
set $ws14 "14"
set $ws15 "15"
set $ws16 "16"
set $ws17 "17"
set $ws18 "18"
set $ws19 "19"

# resize window (you can also use the mouse for that)
mode "ws1" {

	# extra switch/move to workspace
	bindsym 0 workspace number $ws1; mode "default"
	bindsym 1 workspace number $ws11; mode "default"
	bindsym 2 workspace number $ws12; mode "default"
	bindsym 3 workspace number $ws13; mode "default"
	bindsym 4 workspace number $ws14; mode "default"
	bindsym 5 workspace number $ws15; mode "default"
	bindsym 6 workspace number $ws16; mode "default"
 	bindsym 7 workspace number $ws17; mode "default"
 	bindsym 8 workspace number $ws18; mode "default"
 	bindsym 9 workspace number $ws19; mode "default"

	bindsym Escape mode "default"

}


mode "cws1" {

	bindsym 0 move container to workspace number $ws1; mode "default"
	bindsym 1 move container to workspace number $ws11; mode "default"
	bindsym 2 move container to workspace number $ws12; mode "default"
	bindsym 3 move container to workspace number $ws13; mode "default"
	bindsym 4 move container to workspace number $ws14; mode "default"
	bindsym 5 move container to workspace number $ws15; mode "default"
	bindsym 6 move container to workspace number $ws16; mode "default"
 	bindsym 7 move container to workspace number $ws17; mode "default"
 	bindsym 8 move container to workspace number $ws18; mode "default"
 	bindsym 9 move container to workspace number $ws19; mode "default"

	bindsym Escape mode "default"
}
