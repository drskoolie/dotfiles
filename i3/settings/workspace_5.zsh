# +------------+
# |            |
# | Workspaces |
# |            |
# +------------+

# ---------------------- Part 8: Workspaces Extra 5 ----------------------
bindsym $mod+5 mode "ws5"; workspace number $ws5
bindsym $mod+Shift+5 mode "cws5"

set $ws5 "5"
set $ws51 "51"
set $ws52 "52"
set $ws53 "53"
set $ws55 "54"
set $ws55 "55"
set $ws56 "56"
set $ws57 "57"
set $ws58 "58"
set $ws59 "59"

# resize window (you can also use the mouse for that)
mode "ws5" {

	# extra switch/move to workspace
	bindsym 0 workspace number $ws5; mode "default"
	bindsym 1 workspace number $ws51; mode "default"
	bindsym 2 workspace number $ws52; mode "default"
	bindsym 3 workspace number $ws53; mode "default"
	bindsym 4 workspace number $ws54; mode "default"
	bindsym 5 workspace number $ws55; mode "default"
	bindsym 6 workspace number $ws56; mode "default"
 	bindsym 7 workspace number $ws57; mode "default"
 	bindsym 8 workspace number $ws58; mode "default"
 	bindsym 9 workspace number $ws59; mode "default"

	bindsym Escape mode "default"
}

mode "cws5" {

	bindsym 0 move container to workspace number $ws5; mode "default"
	bindsym 1 move container to workspace number $ws51; mode "default"
	bindsym 2 move container to workspace number $ws52; mode "default"
	bindsym 3 move container to workspace number $ws53; mode "default"
	bindsym 4 move container to workspace number $ws54; mode "default"
	bindsym 5 move container to workspace number $ws55; mode "default"
	bindsym 6 move container to workspace number $ws56; mode "default"
 	bindsym 7 move container to workspace number $ws57; mode "default"
 	bindsym 8 move container to workspace number $ws58; mode "default"
 	bindsym 9 move container to workspace number $ws59; mode "default"

	bindsym Escape mode "default"
}

