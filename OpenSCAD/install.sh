FILE_OPENSCAD=~/.config/OpenSCAD
if test -f "$FILE_OPENSCAD"; then
	rm ~/.config/OpenSCAD/
	ln -s ~/dotfiles/OpenSCAD/ ~/.config/
else
	ln -s ~/dotfiles/OpenSCAD/ ~/.config/
fi
