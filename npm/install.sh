curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install node

mkdir -p ~/dotfiles/npm-global

if test -d ~/.npm-global; then
	rm -rf ~/.npm-global
	ln -s ~/dotfiles/npm-global/ ~/.npm-global
else
	ln -s ~/dotfiles/npm-global ~/.npm-global
fi

npm config set prefix '~/.npm-global'
