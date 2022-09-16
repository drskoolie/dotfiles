if test -f ~/.xinitrc; then
	rm ~/.xinitrc
	ln -s ~/dotfiles/xinitrc/xinitrc ~/.xinitrc
else
	ln -s ~/dotfiles/xinitrc/xinitrc ~/.xinitrc
fi
