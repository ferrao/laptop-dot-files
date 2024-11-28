#
# Custom Paths 
#

# Local bin Path
export PATH=$PATH:/home/ferrao/.local/bin

# Node Path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Ruby Path
export PATH="$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin"

# Eb Cli
export PATH="$PATH:$HOME/.ebcli-virtual-env/executables"
export PATH="$PATH:$HOME/.pyenv/versions/3.7.2/bin"

