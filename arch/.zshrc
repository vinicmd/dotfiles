export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

##### ALIAS #####
alias "ls"="exa --icons"
alias "l"="ls -la"
alias 'cat'='bat'
alias 'ips'='ip -c -br a'
alias 'ports'='sudo netstat -tulanp'
alias 'please'='sudo'
alias 'dotupdate'='cd ~/dotfiles && git pull'
alias 'dotchange'='cd ~/dotfiles && git c "Add files to this" && git push'
alias 'push'='git push'
alias 'commit'='git commit -m'
alias 'gcommit'='git add . && git commit -m'
alias 'pull'='git pull'
alias 'add'='git add .'
alias 'merge'='git merge'
alias 'status'='git status'
alias 'checkout'='git checkout'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# [[ -s "/home/vinicius/.gvm/scripts/gvm" ]] && source "/home/vinicius/.gvm/scripts/gvm"