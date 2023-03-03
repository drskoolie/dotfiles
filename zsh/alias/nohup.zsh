# +-------+
# | nohup |
# +-------+
function no ()
{
	nohup $1 >/dev/null 2>&1 &
}

function noc ()
{
	nohup libreoffice --calc $1 >/dev/null 2>&1 &
}

function nol ()
{
	nohup libreoffice $1 >/dev/null 2>&1 &
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

alias nozg='nohup zathura ~/github/books/git/progit.pdf >/dev/null 2>&1 &'
