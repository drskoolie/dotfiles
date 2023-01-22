printf '_____________________________\n'
printf 'Part 1: Building firefox\n'
printf '_____________________________\n'
sleep 1
source ~/dotfiles/snap/firefox.sh

printf '_____________________________\n'
printf 'Part 2: Building neovim\n'
printf '_____________________________\n'
sleep 1
source ~/dotfiles/nvim/build.sh

printf '_____________________________\n'
printf 'Part 3: Installing Latex\n'
printf '_____________________________\n'
sleep 1
sudo apt install texlive-full
