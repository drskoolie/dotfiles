rm /usr/local/bin/lf

if test -d ~/.config/lf; then
	rm -rf ~/.config/lf
	ln -s ~/dotfiles/lf ~/.config/lf
else
	ln -s ~/dotfiles/lf ~/.config/lf
fi

ln -s ~/dotfiles/lf/lf_bin ~/usr/local/bin/lf
