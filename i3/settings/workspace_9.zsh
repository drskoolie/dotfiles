
# ---------------------- Workspaces Media 9 ----------------------
bindsym $mod+9 mode "ws9"
bindsym $mod+Shift+9 mode "cws9"

set $ws9 "9:audiobook"
set $ws91 "91:music"
set $ws92 "92:reddit"
set $ws93 "93:torrent"
set $ws94 "94:youtube"
set $ws95 "95"
set $ws96 "96"
set $ws97 "97"
set $ws98 "98"
set $ws99 "99"

mode "ws9" {

	bindsym a workspace number $ws9; mode "default"
	bindsym m workspace number $ws91; mode "default"
	bindsym r workspace number $ws92; mode "default"
	bindsym t workspace number $ws93; mode "default"
	bindsym y workspace number $ws94; mode "default"

	bindsym Escape mode "default"
}


mode "cws9" {

	bindsym a move container to workspace number $ws9; mode "default"
	bindsym m move container to workspace number $ws91; mode "default"
	bindsym r move container to workspace number $ws92; mode "default"
	bindsym t move container to workspace number $ws93; mode "default"
	bindsym y move container to workspace number $ws94; mode "default"

	bindsym Escape mode "default"
}

