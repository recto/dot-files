
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
export MAGICK_HOME=/opt/ImageMagick
PATH="${MAGICK_HOME}/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export EDITOR='vim'
alias tmux="TERM=xterm-256color tmux"
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh
