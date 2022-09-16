if test -d ~/.config/i3; then
	rm -rf ~/.config/i3
	ln -s ~/dotfiles/i3 ~/.config
else
	ln -s ~/dotfiles/i3 ~/.config
fi

GIT_BUMBLEBEE=https://github.com/tobi-wan-kenobi/bumblebee-status
FOLDER_BUMBLEBEE=~/dotfiles/i3/bumblebee-status/

if [ ! -d "$FOLDER_BUMBLEBEE" ]; then
	git clone --depth=1 $GIT_BUMBLEBEE $FOLDER_BUMBLEBEE
else
	echo "$GIT_BUMBLEBEE already cloned"
fi
