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
export WORKON_HOME=~/Envs
export PROJECT_HOME=~/Envs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

# miniconda path
export PATH=/Users/alexanderzhang/miniconda2/bin:"$PATH"

# NCL environment variables
export NCARG_ROOT=/Users/alexanderzhang/miniconda2/bin/ncl
export PATH=$NCARG_ROOT/bin:"$PATH"
