# +------+
# | tmux |
# +------+

function t () 
{
	case $1 in
		ls) tmux list-sessions;;

		ks) tmux kill-session;;
		kst) tmux kill-session -t $2;;

		ns) tmux new-session;;
		nss) tmux new-session -s $2;;

		t) tmux $1;;
	esac
}


