PS1="%2~ $ "        # ~ $ Prompt instead of <name>@<name's>Macbook

# Plugins
source ~/.plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.plugins/z/z.sh
source ~/.plugins/fzf/shell/key-bindings.zsh

bindkey -v
# bindkey -e
# set -o vi
setopt autocd       # cd into directories without 'cd'

export PATH=/usr/local/sbin:$PATH

# Pipenv WARNING: LANG not set
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# Alias
alias c="clear"
alias ll="ls -al"
alias la="ls -a"
alias pes="pipenv shell"
alias p="python"
alias vim="nvim"
alias bsl="brew services list"
alias pmr="python3 manage.py runserver"
# Docker
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dc="docker-compose"
# Tmux
alias tks="tmux kill-server"
alias s="source ~/.zshrc"
# Git
alias g="git"
alias gs="git status"
alias gd="git diff"
alias gc="git checkout"
alias gpo="git pull origin"
alias gpuo="git push origin"
alias gfa="git fetch --all"
alias gfa="git fetch --all"
# Golang
alias gb="go build"
alias gr="go run"

# bindkey "^Q" clear-screen  # clear screen with ctrl-k (cmd-k via alacritty bind)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'
# in-built version control system to prompt branch name
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
RPROMPT=\$vcs_info_msg_0_

export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shiyan/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shiyan/Downloads/google-cloud-sdk/path.zsh.inc'; fi
export CLOUDSDK_PYTHON="/Library/Frameworks/Python.framework/Versions/3.10/bin/python3.10"

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shiyan/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shiyan/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# MacOS fork() celery issue
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES 

# Load NVM 
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#

export DENO_INSTALL="/Users/shiyan/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Pyenv
. "$HOME/.cargo/env"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Poetry
export PATH="$HOME/.local/bin:$PATH"



