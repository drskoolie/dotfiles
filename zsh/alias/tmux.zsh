# +------+
# | tmux |
# +------+

function t () 
{
	# Get the folder from the second argument
	local folder_name="$2" 

	case $1 in
		as) tmux attach-session;;
		ast) tmux attach-session -t $2;;

		gt) 
			cd ~/github/"$folder_name"/
			source venv_"$folder_name"/bin/activate
			if tmux has-session -t "$folder_name" 2>/dev/null; then
				tmux attach-session -t "$folder_name"
			else
				tmux new-session -s "$folder_name"
			fi
			;;

		ks) tmux kill-session;;
		kst) tmux kill-session -t $2;;

		ls) tmux list-sessions;;

		ns) tmux new-session;;
		nss) tmux new-session -s $2;;

		t) tmux $1;;
	esac
}

