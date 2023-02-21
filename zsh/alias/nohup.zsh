# +-------+
# | nohup |
# +-------+
function no ()
{
	nohup $1 >/dev/null 2>&1 &
}

function nom ()
{
	nohup mpv $1 >/dev/null 2>&1 &
}

function noo ()
{
	nohup okular $1 >/dev/null 2>&1 &
}

function noz ()
{
	nohup zathura $1 >/dev/null 2>&1 &
}

alias noza='nohup zathura ~/chronicles/books/assembly/step-by-step-linux.pdf >/dev/null 2>&1 &'
alias nozc='nohup zathura ~/chronicles/books/c/modern_approach_2ed_p1.pdf >/dev/null 2>&1 &'
alias nozp='nohup zathura ~/chronicles/books/python/algos_data_structures.pdf >/dev/null 2>&1 &'
