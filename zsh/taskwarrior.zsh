# +------+
# | task |
# +------+
alias ta='task'
alias tac='task calc'

# +---------+
# | showing |
# +---------+
alias tal='task list'
alias tas='task summary'


# +-----------+
# | functions |
# +-----------+

function taa () {
	task $1 annotate $2
}

function tad () {
	task $1 delete
}

# +----------+
# | project: |
# +----------+

alias ta_p='task _projects'
alias tap='task project:'

alias tapc='task project:Contact'
alias tapcw='task project:Contact.Whatsapp'

alias taph='task project:Home'
alias taphl='task project:Home.Laundry'

alias tapt='task project:Terminal'
alias taptn='task project:Terminal.New'
alias tapta='task project:Terminal.Applications'
alias taptat='task project:Terminal.Applications.TaskWarrior'
alias taptati='task project:Terminal.Applications.TimeWarrior'

alias tapu='task project:UW'
alias tapub='task project:UW.Background'
alias tapu6='task project:UW.ece650'
alias tapu7='task project:UW.ece760'
alias tapu7l='task project:UW.ece760.LR'
alias tapum='task project:UW.me269'

