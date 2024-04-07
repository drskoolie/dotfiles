# +--------+
# | neovim |
# +--------+

function n () 
{
	case $1 in
		j) nvim Justfile;;

		g) nvim .gitignore;;

		t) nvim *.tex;;

		*) nvim $1;;
	esac
}


