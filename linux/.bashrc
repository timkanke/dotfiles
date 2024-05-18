#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
eval `dircolors ~/.dir_colors`

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

#Setting the GEM_PATH and GEM_HOME variables may not be necessary, check 'gem env' output to verify whether both variables already exist 
 GEM_HOME=$(ls -t -U | ruby -e 'puts Gem.user_dir')
 GEM_PATH=$GEM_HOME
 export PATH=$PATH:$GEM_HOME/bin

# run to pyspark with jupyter notebook
# export PYSPARK_DRIVER_PYTHON=jupyter
# export PYSPARK_DRIVER_PYTHON_OPTS='notebook'

