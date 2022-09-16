FILE_GITCONFIG=~/.gitconfig
if test -f "$FILE_GITCONFIG"; then
	rm ~/.gitconfig
	ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
else
	ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
fi
