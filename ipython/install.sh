if test -d ~/.ipython; then
	rm -rf ~/.ipython
	ln -s ~/dotfiles/ipython ~/.ipython
	echo "ipython set up"
else
	ln -s ~/dotfiles/ipython ~/.ipython
	echo "ipython set up"
fi

source ~/dotfiles/venv/venv_global/bin/activate
pip install rich
