# ███████╗███████╗██╗  ██╗
# ╚══███╔╝██╔════╝██║  ██║
#   ███╔╝ ███████╗███████║
#  ███╔╝  ╚════██║██╔══██║
# ███████╗███████║██║  ██║
# ╚══════╝╚══════╝╚═╝  ╚═╝
# 

ZSHHOME="${ZSHHOME:-$HOME}"
ANTIBODY="${ANTIBODY:-antibody}"

# update prompt formatting
PURE_PROMPT_PATH_FORMATTING="%2d"

# load autocompletion system
autoload -Uz compinit
compinit -u

# add all bash commands to zsh
source /home/tyler/.bash_profile

# load user configuration files before antibody 
for config ($ZSHHOME/.zsh/configs/*.zsh) source $config

# load auto-generated antibody file
source "$ZSHHOME/.zsh_plugins.sh"

# load local configuration file
local_zshrc="$ZSHHOME/.zshrc.local"
if [[ -f $local_zshrc ]]; then
  source $local_zshrc
fi

# pure prompt
autoload -U promptinit; promptinit
prompt pure

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/tyler/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/tyler/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/tyler/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/tyler/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
