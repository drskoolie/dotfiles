mkdir -p ~/dotfiles/npm-global

if test -d ~/.npm-global; then
	rm -rf ~/.npm-global
	ln -s ~/dotfiles/npm-global/ ~/.npm-global
else
	ln -s ~/dotfiles/npm-global ~/.npm-global
fi

npm config set prefix '~/.npm-global'
