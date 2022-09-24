# +-------+
# | nohup |
# +-------+

function no ()
{
	nohup $1 >/dev/null 2>&1 &
}

function noo ()
{
	nohup okular $1 >/dev/null 2>&1 &
}

function noz ()
{
	nohup zathura $1 >/dev/null 2>&1 &
}

alias zal='nohup zathura ~/chronicles/books/linux/advanced_linux_prog.pdf >/dev/null 2>&1 &'
