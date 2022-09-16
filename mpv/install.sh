if test -d ~/.config/mpv; then
	rm -rf ~/.config/mpv
	ln -s ~/dotfiles/mpv ~/.config/
else
	ln -s ~/dotfiles/mpv ~/.config/
fi
