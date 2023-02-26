if [[ -f "~/.ssh/config" ]] 
then
	trash-put ~/.ssh/config
	ln -s ~/dotfiles/ssh/config ~/.ssh/config
else
	ln -s ~/dotfiles/ssh/config ~/.ssh/config
fi
