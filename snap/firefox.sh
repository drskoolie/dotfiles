sudo add-apt-repository ppa:mozillateam/ppa -y
sudo apt update -y
sudo apt install -t 'o=LP-PPA-mozillateam' firefox -y

echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox

sudo ln ~/dotfiles/snap/mozillateamppa /etc/apt/preferences.d/mozillateamppa
