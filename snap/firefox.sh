sudo add-apt-repository ppa:mozillateam/ppa
sudo apt update
sudo apt install -t 'o=LP-PPA-mozillateam' firefox

echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox

sudo ln ~/dotfiles/snap/mozillateamppa /etc/apt/preferences.d/mozillateamppa
