#!/bin/bash

if [ -d "$HOME/.dotfiles/powerlevel10k/" ]; then
	echo "Powerleve10k already installed, skipping"
else
	echo "Installing PowerLevel10k"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k "$HOME/.dotfiles/powerlevel10k"
fi


if [ -d "$HOME/.dotfiles/zsh/packages/zsh-autosuggestions" ]; then
	echo "zsh-autosuggestions already installed, removing and installing"
	rm -rf $HOME/.dotfiles/zsh/packages/zsh-autosuggestions 
	git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions "$HOME/.dotfiles/zsh/packages/zsh-autosuggestions"
else
	echo "Installing zsh-autosuggestions"
	git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions "$HOME/.dotfiles/zsh/packages/zsh-autosuggestions"
fi

if [ -d "$HOME/.dotfiles/zsh/packages/zsh-syntax-highlighting" ]; then
	echo "zsh-syntax-highlighting already installed, removing and installing"
	rm -rf $HOME/.dotfiles/zsh/packages/zsh-syntax-highlighting
	git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting "$HOME/.dotfiles/zsh/packages/zsh-syntax-highlighting"
else
	echo "Installing zsh-syntax-highlighting"
	git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting "$HOME/.dotfiles/zsh/packages/zsh-syntax-highlighting"
fi


if [ -d "$HOME/.zshenv" ]; then
	echo "zshenv already exists, removing"
	rm $HOME/.zshenv
	ln -s $HOME/.dotfiles/zsh/.zshenv ~/.zshenv
else
	echo "zshenv isn't linked, linking"
	ln -s $HOME/.dotfiles/zsh/.zshenv ~/.zshenv
fi


if [ -d "$HOME/.config/i3" ]; then
	echo "i3 already exists, removing"
	rm -rf $HOME/.config/i3
	ln -s $HOME/.dotfiles/i3 ~/.config/i3
else
	echo "i3 isn't linked, linking"
	ln -s $HOME/.dotfiles/i3 ~/.config/i3
fi


if [ -d "$HOME/.config/i3status" ]; then
	echo "i3status already exists, removing"
	rm -rf $HOME/.config/i3status
	ln -s $HOME/.dotfiles/i3status ~/.config/i3status
else
	echo "i3status isn't linked, linking"
	ln -s $HOME/.dotfiles/i3status ~/.config/i3status
fi


if [ -d "$HOME/.config/nvim" ]; then
	echo "nvim already exists, removing"
	rm -rf $HOME/.config/nvim
	ln -s $HOME/.dotfiles/nvim ~/.config/nvim
else
	echo "nvim isn't linked, linking"
	ln -s $HOME/.dotfiles/nvim ~/.config/nvim
fi
