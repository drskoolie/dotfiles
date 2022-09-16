# Installing zsh
sudo apt install zsh
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
if [ ! -d "$FOLDER_SYNTAX" ]; then
	git clone --depth=1 $GIT_SYNTAX $FOLDER_SYNTAX
else
	cd "$FOLDER"
	git pull $GIT_SYNTAX
	cd $HOME
fi
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/dotfiles/zsh/packages/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k ~/dotfiles/zsh/packages/powerlevel10k
