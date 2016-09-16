# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
# export MAGICK_HOME=/opt/ImageMagick
# PATH="${MAGICK_HOME}/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
PATH="/usr/local/bin:${PATH}"
export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export EDITOR='vim'
alias tmux="TERM=xterm-256color tmux"
# Python - virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh
# Python 2
#export WORKON_HOME=$HOME/.venv
# Python 3
export WORKON_HOME=$HOME/.venv3
