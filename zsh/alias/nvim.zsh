# +--------+
# | neovim |
# +--------+

function n () 
{
	case $1 in
		g) nvim .gitignore;;

		l) nvim *.tex;;

		*) nvim $1;;
	esac
}


