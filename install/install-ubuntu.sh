# Part I: Zsh
printf '________________________\n'
printf 'Part I: Installing Zsh\n'
printf '________________________\n\n'
sudo apt install zsh
chsh -s $(which zsh)
source ~/dotfiles/zsh/install.sh
