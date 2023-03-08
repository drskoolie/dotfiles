zsh_clone() {
	if [ ! -d $1 ]; then
		git clone --depth=1 $2 $1
	else
		echo "$2 already cloned"
	fi
}

zsh_clone ~/dotfiles/zsh/packages/zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions 
zsh_clone ~/dotfiles/zsh/packages/zsh-syntax-highlighting https://github.com/zsh-users/zsh-syntax-highlighting 
zsh_clone ~/dotfiles/zsh/packages/powerlevel10k https://github.com/romkatv/powerlevel10k
