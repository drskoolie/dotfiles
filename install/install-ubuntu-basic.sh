# Part I: Remove snap
printf '_____________________________\n'
printf 'Part II: Removing snap\n'
printf '_____________________________\n'
sleep 1
source ~/dotfiles/snap/uninstall.sh

# Part II: Installing Everything
printf '________________________\n'
printf 'Part II: Installing Everything\n'
printf '________________________\n\n'
sleep 1
sudo apt update && sudo apt update --fix-missing && sudo apt upgrade -y
sudo apt install boxes batcat cmus feh i3 mpv nvim okular pavucontrol picom pulseaudio - y
sudo apt install rofi scrot simplescreenrecorder tmux trash-cli vim xclip xfce4-terminal xorg zathura zsh -y
sudo timedatectl set-timezone America/Toronto

# Part III: Symliking
printf '________________________\n'
printf 'Part III: Symlinking\n'
printf '________________________\n\n'
mkdir -p ~/.config
source ~/dotfiles/fonts/source.zsh
source ~/dotfiles/git/install.sh
source ~/dotfiles/i3/install.sh
source ~/dotfiles/lf/install.sh
source ~/dotfiles/mpv/install.sh
source ~/dotfiles/nvim/install.sh
source ~/dotfiles/picom/install.sh
source ~/dotfiles/tmux/install.sh
source ~/dotfiles/xinitrc/install.sh
source ~/dotfiles/zathura/install.sh
source ~/dotfiles/zsh/install.sh
