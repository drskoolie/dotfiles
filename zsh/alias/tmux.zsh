# +------+
# | tmux |
# +------+

function t () 
{
	case $1 in
		as) tmux attach-session;;
		ast) tmux attach-session -t $2;;

		ls) tmux list-sessions;;

		ks) tmux kill-session;;
		kst) tmux kill-session -t $2;;

		ns) tmux new-session;;
		nss) tmux new-session -s $2;;

		t) tmux $1;;
	esac
}


