if test -d ~/.config/nvim; then
	rm -rf ~/.config/nvim
	ln -s ~/dotfiles/nvim ~/.config/
else
	ln -s ~/dotfiles/nvim ~/.config/
fi
