if test -d ~/.config/lf; then
	rm -rf ~/.config/lf
	ln -s ~/dotfiles/lf ~/.config/lf
else
	ln -s ~/dotfiles/lf ~/.config/lf
fi


if test -f /bin/lf; then
else
	cp ~/dotfiles/lf/lf_bin /bin/lf
fi
