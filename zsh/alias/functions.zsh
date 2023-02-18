function sshmake () 
{
	ssh-keygen -t ed25519 -C $1
}

function sshcopy()
{
	cat ~/.ssh/id_ed25519.pub | pbcopy
}
