if test -d ~/.config/fit; then
	rm -rf ~/.config/fit
	ln -s ~/dotfiles/fit ~/.config
else
	ln -s ~/dotfiles/fit ~/.config
fi
