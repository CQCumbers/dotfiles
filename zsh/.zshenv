#
# Defines environment variables.
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path
typeset -gUT INFOPATH infopath

# Set the list of directories that zsh searches for programs.
path=(/usr/local/{bin,sbin} "$path[@]")

# Set browser.
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

# Set editors.
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

# Set language.
if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

# Configure display variable.
export DISPLAY='localhost:0'

# Set default less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set less input preprocessor.
if (( $+commands[lesspipe.sh] )); then
  export LESSOPEN='| /usr/bin/env lesspipe.sh %s 2>&-'
fi

# Set NCL environment variables.
if [[ -d /usr/local/bin/ncl ]]; then
  export NCARG_ROOT='/usr/local/bin/ncl'
  export PATH="$NCARG_ROOT/bin:$PATH"
fi

# Source secret environment variables.
if [[ -f "$HOME/.secrets" ]]; then
  source "$HOME/.secrets"
fi
 
# Initialize pyenv
eval "$(pyenv init -)"
