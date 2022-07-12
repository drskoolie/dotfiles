# ----------------------  Workspaces Extra 0 ----------------------
bindsym $mod+0 mode "ws0"
bindsym $mod+Shift+0 mode "cws0"

set $ws101 "101: connect" 
set $ws102 "102: gmail"   
set $ws103 "103: junk"    
set $ws104 "104: learn"   
set $ws105 "105: teams"   
set $ws108 "108: vpn"     
set $ws109 "109: whatsapp"
set $ws110 "110:✈ virtualbox"

# resize window (you can also use the mouse for that)
mode "ws0" {

	# extra switch/move to workspace
	bindsym c workspace number $ws101; mode "default"
	bindsym g workspace number $ws102; mode "default"
 	bindsym j workspace number $ws103; mode "default"
	bindsym l workspace number $ws104; mode "default"
 	bindsym t workspace number $ws105; mode "default"
	bindsym v workspace number $ws108; mode "default"
	bindsym w workspace number $ws109; mode "default"
	bindsym b workspace number $ws110; mode "default"

	bindsym Escape mode "default"

}


mode "cws0" {

	bindsym c move container to workspace number $ws101; mode "default"
	bindsym g move container to workspace number $ws102; mode "default"
 	bindsym j move container to workspace number $ws103; mode "default"
	bindsym l move container to workspace number $ws104; mode "default"
 	bindsym t move container to workspace number $ws105; mode "default"
	bindsym v move container to workspace number $ws108; mode "default"
	bindsym w move container to workspace number $ws109; mode "default"
	bindsym b move container to workspace number $ws110; mode "default"

	bindsym Escape mode "default"
}
 