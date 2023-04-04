# +--------+
# | neovim |
# +--------+

function n () 
{
	case $1 in
		g) nvim .gitignore;;

		t) nvim *.tex;;

		*) nvim $1;;
	esac
}


