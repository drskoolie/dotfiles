# ---------------------- Part 9: Bar ---------------------- 
# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar 
{
        # status_command i3status
		status_command exec ~/.dotfiles/i3status/shell/mybar.sh
		strip_workspace_numbers yes
}

