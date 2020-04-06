# use .sh extension to get bash highlighting in text editors

# my scripts
export PATH=$PATH:~/common-scripts/my-scripts/

######### Alias #########
alias recycle='pushd ~/Desktop/recycle_bin/; rm -r *; popd;'
alias n='nano -c'

#unix
alias lah='ls -lah'
alias proc='ps -ef'

# git
alias cb='git checkout'
alias clone='git clone '
alias log='git log'
alias logst='git log --stat'
alias commit='git commit -m '
alias commita='git commit -a -m '
alias add='git add'
alias rhh='git show-ref assemblem_int --heads --hash | git reset --hard'
alias branch-sort='git branch --sort=-committerdate' # desc
alias branch-sort-asc='git branch --sort=committerdate'
alias stash='git stash'
alias pull='git pull origin '
alias update='git pull --rebase origin '
alias push='git push origin '
alias fetch='git fetch'
alias stash='git stash'
alias pm='git push origin master'
alias gh='git rev-parse --short HEAD'
alias nch='git diff --numstat'
alias gs='git merge --squash '
alias d='git diff head'
alias s='git status'
alias new-gitignore='cp ~/common_scripts/gitignore_template.txt .gitignore'

# bash
alias edit-bash='open ~/.bashrc'
alias edit-profile='open ~/.bash_profile'
alias edit-common='open ~/common_scripts/.bash_common.sh'
alias rb='source ~/.bash_profile'  # rb --> reset bash
alias cd-scripts='cd ~/common_scripts/my-scripts/'
alias help-scripts='ls ~/common_scripts/my-scripts/'

# maven
alias mcc='mvn clean compile'
alias mci='mvn clean install'
alias mcis='mvn clean install -DskipTests'
alias mcd='mvn clean deploy'
alias mcds='mvn clean deploy -DskipTests'
alias mcp='mvn clean package'

# spring boot
alias sb='mvn spring-boot:run'

# network 
alias tcp-8080='lsof -i :8080'

# html pages and links
alias radar='open https://radar.weather.gov/ridge/Conus/full_loop.php'
alias wx='open https://weather.com/weather/tenday/l/bb3a65580eeeed24af39f5db9d1f57695d4b0767bf2fe3c5745e803ee36ed41b'

