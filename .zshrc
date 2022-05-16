# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

##### CONFIGS REACT NATIVE #####
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk 
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

##### ALIAS #####
alias ls='exa --icons'
alias l='ls -la'
alias 'DEL /s /q /f'='rm -rF'
alias 'ys'='yarn start'
alias 'ysl'='yarn start:linux'
alias 'gpl'='git pull'
alias 'gph'='git push'
alias 'gch'='git checkout'
alias 'ya'='yarn android'
alias 'ga'='git add'
alias 'gst'='git status'

##### NVM #####
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

##### ASDF #####
. /opt/asdf-vm/asdf.sh
