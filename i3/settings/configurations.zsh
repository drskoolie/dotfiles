# ---------------------- Configuration ---------------------- 

bindsym $mod+c mode "configuration"

mode "configuration" {

	bindsym c exec cat \
		~/.dotfiles/i3/settings/startup.zsh \
		~/.dotfiles/i3/settings/applications.zsh \
		~/.dotfiles/i3/settings/bar.zsh \
		~/.dotfiles/i3/settings/borders.zsh \
		~/.dotfiles/i3/settings/configurations.zsh \
		~/.dotfiles/i3/settings/gaps.zsh \
		~/.dotfiles/i3/settings/kde.zsh \
		~/.dotfiles/i3/settings/media.zsh \
		~/.dotfiles/i3/settings/resize.zsh \
		~/.dotfiles/i3/settings/scratchpad.zsh \
		~/.dotfiles/i3/settings/windows.zsh \
		~/.dotfiles/i3/settings/workspace_1.zsh \
		~/.dotfiles/i3/settings/workspace_2.zsh \
		~/.dotfiles/i3/settings/workspace_3.zsh \
		~/.dotfiles/i3/settings/workspace_4.zsh \
		~/.dotfiles/i3/settings/workspace_5.zsh \
		~/.dotfiles/i3/settings/workspace_8.zsh \
		~/.dotfiles/i3/settings/workspace_9.zsh \
		~/.dotfiles/i3/settings/workspace_10.zsh \
		~/.dotfiles/i3/settings/workspace_unused.zsh \
		~/.dotfiles/i3/settings/notes.zsh \
		> ~/.dotfiles/i3/config \
		, reload
	
	bindsym d reload
	bindsym r restart
	bindsym e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

	bindsym Escape mode "default"
}
