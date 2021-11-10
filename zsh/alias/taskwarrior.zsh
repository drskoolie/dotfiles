# $ task +book modify -book rc.confirmation:no rc.bulk:0
# +------+
# | task |
# +------+
alias ta='task'
alias tac='task calc'
alias tass='task sync' # www.inthe.am

# +-----------+
# | reporting |
# +-----------+
alias tar='task reports'
alias tara='task active'
alias tarb='task burndown'
alias tarbd='task burndown.daily'
alias tarbm='task burndown.monthly'
alias tarbw='task burndown.weekly'
function tarc () { task completed $1 | bat -p }
alias targa='task ghistory.annual'
alias targm='task ghistory.monthly'
alias tarha='task history.annual'
alias tarhm='task history.monthly'
function tarl () { task list $1 | bat -p }
function tarll () { task list limit:$1 }
alias tarl3='task list limit:30'
alias tarld='task list due:today'
alias tarldn='task list due.not:today'
function tarm () { task minimal $1 | bat -p }
function tarn () { task newest $1 | bat -p }
function taro () { task oldest $1 | bat -p }
function tarv () { task overdue $1 | bat -p }
alias tarp='task projects'
alias tarr='task recurring'
alias tars='task summary'
alias tart='task tags'

# +-----------+
# | functions |
# +-----------+
function tafa () { task $1 annotate $2 }
function tafe () { task $1 edit }
function tafd () { task $1 done }
function tafm () { task $1 modify $2 }
function tafr () { task $1 delete }
function tafs() { task $1 start }
function taff() { task $1 stop }

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
alias tapar='task project:App.Remind'
alias tapat='task project:App.TaskWarrior'
alias tapati='task project:App.TimeWarrior'
alias tapan='task project:App.Neovim'
alias tapaz='task project:App.Zathura'

alias tapl='task project:Linux'
alias tapld='task project:Linux.Dotfiles'
alias tapli='task project:Linux.i3'
alias taplg='task project:Linux.General'
alias taplt='task project:Linux.Termux'

alias tapp='task project:Pressing'


alias tapu='task project:UW'
alias tapub='task project:UW.Background'
alias tapu6='task project:UW.ece650'
alias tapu7='task project:UW.ece760'
alias tapu7l='task project:UW.ece760.LR'
alias tapum='task project:UW.me269'
alias tapur='task project:UW.Research'
