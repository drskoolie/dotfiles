# Installing zsh
chsh -s $(which zsh)

# Linking zshrc
ZSHRC=~/.zshrc
if test -f "$ZSHRC"; then
	rm ~/.zshrc
	ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
else
	ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
fi

# Installing packages
GIT_SYNTAX=https://github.com/zsh-users/zsh-syntax-highlighting
FOLDER_SYNTAX=~/dotfiles/zsh/packages/zsh-syntax-highlighting

GIT_AUTOSUGGESTIONS=https://github.com/zsh-users/zsh-autosuggestions
FOLDER_AUTOSUGGESTIONS=~/dotfiles/zsh/packages/zsh-autosuggestions

GIT_POWERLEVEL10K=https://github.com/romkatv/powerlevel10k
FOLDER_POWERLEVEL10K=~/dotfiles/zsh/packages/powerlevel10k

if [ ! -d "$FOLDER_SYNTAX" ]; then
	git clone --depth=1 $GIT_SYNTAX $FOLDER_SYNTAX
else
	echo "$GIT_SYNTAX already cloned"
fi

if [ ! -d "$FOLDER_AUTOSUGGESTIONS" ]; then
	git clone --depth=1 $GIT_AUTOSUGGESTIONS $FOLDER_AUTOSUGGESTIONS
else
	echo "$GIT_AUTOSUGGESTIONS already cloned"
fi

if [ ! -d "$FOLDER_POWERLEVEL10K" ]; then
	git clone --depth=1 $GIT_POWERLEVEL10K $FOLDER_POWERLEVEL10K
else
	echo "$GIT_POWERLEVEL10K already cloned"
fi
