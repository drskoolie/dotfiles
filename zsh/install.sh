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

source ~/dotfiles/zsh/packages/packages_install.sh
