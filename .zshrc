PS1="%2~ $ "        # ~ $ Prompt instead of <name>@<name's>Macbook

# Plugins
source ~/.plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.plugins/z/z.sh
source ~/.plugins/fzf/shell/key-bindings.zsh

bindkey -v          # Enable vi mode in zsh 
setopt autocd       # cd into directories without 'cd'

export PATH=/usr/local/sbin:$PATH

# Pipenv WARNING: LANG not set
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# alias
alias ll="ls -al"
alias la="ls -a"
alias pes="pipenv shell"
alias p="python3"
alias vim="nvim"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'
# in-built version control system to prompt branch name
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'
#
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
RPROMPT=\$vcs_info_msg_0_
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shiyan/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shiyan/Downloads/google-cloud-sdk/path.zsh.inc'; fi
CLOUDSDK_PYTHON="/Library/Frameworks/Python.framework/Versions/3.10/bin/python3.10"

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shiyan/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shiyan/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
