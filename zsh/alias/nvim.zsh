# +--------+
# | neovim |
# +--------+

function n () 
{
	case $1 in
		g) nvim .gitignore;;

		*) nvim $1;;
	esac
}
