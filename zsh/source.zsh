rm ~/.zshrc
rm ~/.zshenv

ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.zshenv ~/.zshenv

git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.dotfiles/zsh/packages/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.dotfiles/zsh/packages/zsh-autosuggestions
git clone https://github.com/romkatv/powerlevel10k ~/.dotfiles/zsh/packages/powerlevel10k
