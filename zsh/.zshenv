#
# Defines environment variables.
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# display environment variable
export DISPLAY=localhost:0

# gcc path
export PATH=/usr/local/bin:$PATH

# virtualenvwrapper for python
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=~/Envs
  export PROJECT_HOME=~/Envs
  export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
  source /usr/local/bin/virtualenvwrapper.sh
fi

# miniconda path
if [ -d ~/miniconda2/bin ]; then
  export PATH=~/miniconda2/bin:"$PATH"
fi

# anaconda path
if [ -d ~/anaconda/bin ]; then
    export PATH=~/anaconda/bin:"$PATH"
fi

# NCL environment variables
if [ -d ~/miniconda2/bin/ncl ]; then
  export NCARG_ROOT=~/miniconda2/bin/ncl
  export PATH=$NCARG_ROOT/bin:"$PATH"
fi

