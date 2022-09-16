ZSHRC=~/.zshrc

sudo apt install zsh
chsh -s $(which zsh)

if test -f "$ZSHRC"; then
	rm ~/.zshrc
	ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
else
	ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
fi

git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting ~/dotfiles/zsh/packages/zsh-syntax-highlighting
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/dotfiles/zsh/packages/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k ~/dotfiles/zsh/packages/powerlevel10k
