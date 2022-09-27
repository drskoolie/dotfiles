mkdir -p ~/.config

if test -d ~/.config/picom; then
	rm -rf ~/.config/picom
	ln -s ~/dotfiles/picom/ ~/.config/
else
	ln -s ~/dotfiles/picom ~/.config
fi
