git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh Hack
fc-cache -fv
fc-list | grep "Nerd Font"
