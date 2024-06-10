mkdir -p ~/.config

if test -d ~/.config/zellij; then
	rm -rf ~/.config/zellij
	ln -s ~/dotfiles/zellijg ~/.config/
else
	ln -s ~/dotfiles/zellij ~/.config/
fi
