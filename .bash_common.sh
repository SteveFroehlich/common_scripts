# use .sh extension to get bash highlighting in text editors

# my scripts
export PATH=$PATH:~/my-scripts/

######### Alias #########
alias recycle='pushd ~/Desktop/recycle_bin/; rm -r *; popd;'

#unix
alias lah='ls -lah'
alias proc='ps -ef'

# git
alias cb='git checkout'
alias log='git log'
alias logst='git log --stat'
alias commit='git commit -m '
alias commita='git commit -a -m '
alias add='git add'
alias rhh='git show-ref assemblem_int --heads --hash | git reset --hard'
alias stash='git stash'
alias pull='git pull origin '
alias update='git pull --rebase origin '
alias push='git push origin '
alias fetch='git fetch'
alias d='git diff head'
alias pm='git push origin master'
alias sq='git merge --squash '

# bash
alias edit-bash='open ~/.bashrc'
alias edit-common='open ~/common_scripts/.bash_common.sh'
alias rb='source ~/.bashrc'  # rb --> reset bash
alias cd-scripts='cd ~/common_scripts/my-scripts/'
alias help-scripts='ls ~/common_scripts/my-scripts/'
alias help-alias='grep alias ~/.bashrc ~/common_scripts/.bash_common.sh'

#maven
alias mci='mvn clean install'
alias mcis='mvn clean install -DskipTests'

# html pages and links
alias radar='open https://radar.weather.gov/ridge/Conus/full_loop.php'
alias wx='open https://weather.com/weather/tenday/l/bb3a65580eeeed24af39f5db9d1f57695d4b0767bf2fe3c5745e803ee36ed41b'

