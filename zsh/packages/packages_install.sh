# Zsh Autosuggestions
if [ ! -d ~/dotfiles/zsh/packages/zsh-autosuggestions ]; then
	git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/dotfiles/zsh/packages/zsh-autosuggestions
else
	echo "https://github.com/zsh-users/zsh-autosuggestions already cloned"
fi

# Zsh Syntax Highlighting
if [ ! -d ~/dotfiles/zsh/packages/zsh-syntax-highlighting ]; then
	git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting ~/dotfiles/zsh/packages/zsh-syntax-highlighting
else
	echo "https://github.com/zsh-users/zsh-syntax-highlighting  already cloned"
fi

if [ ! -d ~/dotfiles/zsh/packages/powerlevel10k ]; then
	git clone --depth=1 https://github.com/romkatv/powerlevel10k ~/dotfiles/zsh/packages/powerlevel10k
else
	echo "https://github.com/romkatv/powerlevel10k already cloned"
fi
