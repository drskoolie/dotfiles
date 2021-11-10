#!/bin/bash

if [ -d "$HOME/.dotfiles/powerlevel10k/" ]; then
	echo "Powerleve10k already installed, skipping"
else
	echo "Installing PowerLevel10k"
	git clone https://githib.com/romkatv/powerlevel10k.git "$HOME/.dotfiles/powerlevel10k"
fi


if [ -d "$HOME/.dotfiles/zsh/packages/zsh-autosuggestions" ]; then
	echo "zsh-autosuggestions already installed, skipping"
else
	echo "Installing zsh-autosuggestions"
	git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.dotfiles/zsh/packages/zsh-autosuggestions"
fi

if [ -d "$HOME/.dotfiles/zsh/packages/zsh-syntax-highlighting" ]; then
	echo "zsh-syntax-highlighting already installed, skipping"
else
	echo "Installing zsh-syntax-highlighting"
	git clone https://github.com/zsh-users/zsh-syntax-highlighting "$HOME/.dotfiles/zsh/packages/zsh-syntax-highlighting"
fi

ln -s $HOME/.dotfiles/zsh/.zshenv ~/.zshenv
ln -s $HOME/.dotfiles/i3 ~/.config/i3
ln -s $HOME/.dotfiles/i3status ~/.config/i3status
ln -s $HOME/.dotfiles/nvim ~/.config/nvim
ln -s $HOME/.dotfiles/taskwarrior/.task ~/.task
ln -s $HOME/.dotfiles/taskwarrior/.taskrc ~/.taskrc
