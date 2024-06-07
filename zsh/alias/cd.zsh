# +------------------+
# | change directory |
# +------------------+
function mkc ()
{
	mkdir -p $1 && cd $1 && ls
}
