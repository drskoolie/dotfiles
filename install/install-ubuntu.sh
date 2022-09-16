# Part I: Gitconfig
printf '_____________________________\n'
printf 'Part I: Setting up Gitconfig\n'
printf '_____________________________\n\n'
sleep 1
source ~/dotfiles/git/install.sh

# Part II: Zsh
printf '________________________\n'
printf 'Part II: Installing Everything\n'
printf '________________________\n\n'
sleep 1
sudo apt install i3 xorg zsh

# Part III: Make ~/.config
printf '________________________\n'
printf 'Part III: Setting up zsh\n'
printf '________________________\n\n'
sleep 1

source ~/dotfiles/zsh/install.sh

# Part IV: Setting up i3
printf '________________________\n'
printf 'Part IV: Installing i3\n'
printf '________________________\n\n'
sleep 1
mkdir -p ~/.config
source ~/dotfiles/i3/install.sh

# Part V: Setting up xinitrc
printf '________________________\n'
printf 'Part V: Setting up xinitrc\n'
printf '________________________\n\n'
sleep 1
source ~/dotfiles/xinitrc/install.sh
