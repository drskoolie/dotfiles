# Part I: Remove snap
printf '_____________________________\n'
printf 'Part 1: Removing snap\n'
printf '_____________________________\n'
sleep 1
source ~/dotfiles/snap/uninstall.sh

# Part II: Installing Everything
printf '________________________\n'
printf 'Part 2: Installing Everything\n'
printf '________________________\n\n'
sleep 1
sudo apt update && sudo apt update --fix-missing && sudo apt upgrade -y
sudo apt install xorg xinit i3 feh neovim pavucontrol picom pulseaudio rofi scrot tmux vim zsh -y
sudo timedatectl set-timezone America/Toronto

# Part III: Symliking
printf '________________________\n'
printf 'Part 3: Symlinking\n'
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
