mkdir -p ~/.config
if test -d ~/.config/tmux; then
	rm -rf ~/.config/tmux
	ln -s ~/dotfiles/tmux ~/.config/
else
	ln -s ~/dotfiles/tmux ~/.config/
fi
