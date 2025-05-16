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
alias 'dotchange'='cd ~/dotfiles && git c "Add new changes at `date +"%d/%m/%y %H:%M:%S"`" && git push'
alias 'updateobsidian'='cd ~/Documentos/obsidian/Vini/ && git pull'
alias 'saveobsidian'='cd ~/Documentos/obsidian/Vini/ && git c "Add new changes at `date +"%d/%m/%y %H:%M:%S"`" && git push'
alias 'push'='git push'
alias 'commit'='git commit -m'
alias 'gcommit'='git add . && git commit -m'
alias 'pull'='git pull'
alias 'add'='git add .'
alias 'merge'='git merge'
alias 'status'='git status'
alias 'checkout'='git checkout'
alias 'tokei'='tokei --exclude pnpm-lock.yaml'
alias 'update'='yay -Syyuu --noconfirm --answerdiff=None'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# [[ -s "/home/vinicius/.gvm/scripts/gvm" ]] && source "/home/vinicius/.gvm/scripts/gvm"

#source "$HOME/.cargo/env"


# React Native configs

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk/
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
#. /opt/asdf-vm/asdf.sh


#export FLYCTL_INSTALL="/home/vinicius/.fly"
#export PATH="$FLYCTL_INSTALL/bin:$PATH"

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

. "$HOME/.cargo/env" 
