# +--------+
# | neovim |
# +--------+

function t () 
{
	case $1 in
		ls) tmux list-sessions;;

		t) tmux $1;;
	esac
}


