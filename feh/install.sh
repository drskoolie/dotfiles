mkdir -p ~/.config

if test -d ~/.config/feh; then
	rm -rf ~/.config/feh
	ln -s ~/dotfiles/feh ~/.config/
else
	ln -s ~/dotfiles/feh ~/.config/
fi
