# Configure virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh


# Setting PATH for Python 2.7
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

# Setting PATH for Python 3.4
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"



# Set PATH for user-created scripts
PATH="/Users/steven/bin:${PATH}"

# Set PATH for brew coreutils
# PATH="/usr/local/opt/coreutils/libexec/gnubin:${PATH}"
#

PATH="$HOME/.meteor:${PATH}"

PATH="/usr/local/Caskroom:${PATH}"
export PGDATA=/usr/local/var/postgres
