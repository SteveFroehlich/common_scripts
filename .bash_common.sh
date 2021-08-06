# use .sh extension to get bash highlighting in text editors

######### Alias #########
alias recycle='pushd ~/Desktop/recycle_bin/; rm -r *; popd;'
alias n='nano -c'

#unix
alias lah='ls -lah'
alias proc='ps -ef'
alias tarh='printf "\n  tar:   $ tar -czvf myDir.tar.gz myDir\n  untar: $ tar -xzvf myDir.tar.gz\n\n"'

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
alias up='git pull --rebase origin '
alias push='git push origin '
alias fetch='git fetch'
alias stash='git stash'
alias pm='git push origin master'
alias gh='git rev-parse --short HEAD'
alias nch='git diff --numstat'
alias gs='git merge --squash '
alias merge='git merge '
alias d='git diff HEAD'
alias s='git status'
alias bs='git branch --sort=committerdate'
alias sloc-py='git ls-files | grep .py | xargs wc -l'
alias sloc-j='git ls-files | grep .java | xargs wc -l'
alias new-gitignore='cp ~/common_scripts/gitignore_template.txt .gitignore'

# grep
alias cgrep='grep --color=auto'

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
alias wx='open https://weather.com/weather/tenday/l/cd584f93846d30b9bf5c8480b555468b3c3f2b7a9e0b6527d851fd7910140297'
alias wxh='open https://weather.com/weather/hourbyhour/l/cd584f93846d30b9bf5c8480b555468b3c3f2b7a9e0b6527d851fd7910140297'
alias clouds='open https://weather.cod.edu/satrad/?parms=local-N_Illinois-02-24-0-100-1&checked=map&colorbar=undefined'
alias rain='open https://weather.cod.edu/satrad/?parms=local-N_Illinois-comp_radar-24-0-100-1&checked=map&colorbar=undefined'
alias sun='open https://www.timeanddate.com/sun/usa/chicago'
alias ddg='open https://duckduckgo.com/'
alias github='open https://github.com/SteveFroehlich'
alias ih='open https://www.indiehackers.com/'
alias chrome='open -a "Google Chrome"'
alias firefox='open -a "Firefox"'

# aws
alias ec2-types='open https://aws.amazon.com/ec2/instance-types/' 

