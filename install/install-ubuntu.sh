# Part I: Gitconfig
printf '_____________________________\n'
printf 'Part I: Setting up Gitconfig\n'
printf '_____________________________\n\n'
sleep 1
source ~/dotfiles/git/install.sh

# Part II: Remove snap
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
sudo apt install batcat cmus feh i3 mpv okular pavucontrol picom pulseaudio - y
sudo apt install rofi scrot simplescreenrecorder tmux trash-cli vim xclip xfce4-terminal xorg zathura zsh -y
sudo timedatectl set-timezone America/Toronto

# Part III: Zsh
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

# Part VI: Setting up mpv
printf '________________________\n'
printf 'Part VI: Setting up mpv\n'
printf '________________________\n\n'
sleep 1
source ~/dotfiles/mpv/install.sh

# Part VII: Neovim
printf '________________________\n'
printf 'Part VII: Setting up neovim\n'
printf '________________________\n\n'
sleep 1
source ~/dotfiles/nvim/build.sh
source ~/dotfiles/nvim/install.sh


# Part VIII: Tmux
printf '________________________\n'
printf 'Part VIII: Setting up tmux and picom\n'
printf '________________________\n\n'
sleep 1
source ~/dotfiles/tmux/install.sh
source ~/dotfiles/picom/install.sh

# Part VIV: Remove snap
printf '_____________________________\n'
printf 'Part VIV: Installing Firefox\n'
printf '_____________________________\n'
sleep 1
source ~/dotfiles/snap/firefox.sh

# Part V: Adding Fonts
printf '_____________________________\n'
printf 'Part VIV: Installing Firefox\n'
printf '_____________________________\n'
sleep 1
source ~/dotfiles/fonts/source.zsh

# Part VI: Setting up lf
printf '_____________________________\n'
printf 'Part VI: Installing LF\n'
printf '_____________________________\n'
sleep 1
source ~/dotfiles/lf/install.sh
