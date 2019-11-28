# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
# export MAGICK_HOME=/opt/ImageMagick
# PATH="${MAGICK_HOME}/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export JAVA_HOME=$(/usr/libexec/java_home)
PATH="/usr/local/bin:${PATH}"
export PATH
eval "$(rbenv init -)"
export EDITOR='vim'
alias tmux="TERM=xterm-256color tmux"
# Python - virtualenv
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
#source /usr/local/bin/virtualenvwrapper.sh
# Python 2
#export WORKON_HOME=$HOME/.venv
# Python 3
export WORKON_HOME=$HOME/.venv3
# Octave
alias octave='octave --no-gui'
# Golang
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin
# added by Anaconda3 4.3.1 installer
#export PATH="$HOME/anaconda3/bin:$PATH"
#KERAS_BACKEND=tensorflow python -c "from keras import backend"
set -o vi
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
