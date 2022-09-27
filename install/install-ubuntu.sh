# Part I: Gitconfig
printf '_____________________________\n'
printf 'Part I: Setting up Gitconfig\n'
printf '_____________________________\n\n'
sleep 1
source ~/dotfiles/git/install.sh

# Part II: Installing Everything
printf '________________________\n'
printf 'Part II: Installing Everything\n'
printf '________________________\n\n'
sleep 1
sudo apt update && sudo apt update --fix-missing && sudo apt upgrade -y
sudo apt install zsh i3 xorg xfce4-terminal mpv tmux trash-cli vim cmus feh picom rofi simplescreenrecorder pavucontrol pulseaudio -y

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
source ~/dotfiles/nvim/install.sh


# Part VIII: Tmux
printf '________________________\n'
printf 'Part VIII: Setting up tmux and picom\n'
printf '________________________\n\n'
sleep 1
source ~/dotfiles/tmux/install.sh
source ~/dotfiles/picom/install.sh
