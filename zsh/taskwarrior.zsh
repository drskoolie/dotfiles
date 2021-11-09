# +------+
# | task |
# +------+
alias ta='task'
alias tac='task calc'

alias ta_p='task _projects'
alias ta_t="task _tags | grep -v -e '[^[:lower:]]' -e 'next' -e 'nocal' -e 'nocolor' -e 'nonag'"

# +------------+
# | monitoring |
# +------------+
alias taml='task list'
alias tama='task active'
alias tamb='task burndown'
alias tambd='task burndown.daily'
alias tambm='task burndown.monthly'
alias tambw='task burndown.weekly'
alias tamc='task completed'
alias tams='task summary'

# +-----------+
# | functions |
# +-----------+
function tafa () {
	task $1 annotate $2
}

function tafe () {
	task $1 edit
}

function tafd () {
	task $1 delete
}

function tafs() {
	task $1 start
}

function taff() {
	task $1 stop
}

# +----------+
# | project: |
# +----------+
alias tap='task project:'

alias tapb='task project:Book'

alias tapc='task project:Contact'
alias tapcg='task project:Contact.Gmail'
alias tapcw='task project:Contact.Whatsapp'

alias taph='task project:Home'
alias taphl='task project:Home.Laundry'

alias tapn='task project:New'
alias tapa='task project:App'
alias tapat='task project:App.TaskWarrior'
alias tapati='task project:App.TimeWarrior'
alias tapan='task project:App.Neovim'
alias tapaz='task project:App.Zathura'

alias tapld='task project:Linux.Dotfiles'
alias tapli='task project:Linux.i3'
alias taplg='task project:Linux.General'

alias tapp='task project:Pressing'


alias tapu='task project:UW'
alias tapub='task project:UW.Background'
alias tapu6='task project:UW.ece650'
alias tapu7='task project:UW.ece760'
alias tapu7l='task project:UW.ece760.LR'
alias tapum='task project:UW.me269'
alias tapur='task project:UW.Research'
