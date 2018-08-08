# requires:
# MacVim
# Google Chrome
# thefuck https://github.com/nvbn/thefuck#installation
# git-completion, git-prompt https://qiita.com/varmil/items/9b0aeafa85975474e9b6

set -o vi

export PATH=/usr/local/sbin:$PATH
#MacVim and vi for terminal
export PATH=/Applications/MacVim.app/Contents/bin:$PATH
alias vi=vim

export SVN_EDITOR=/usr/bin/vim

source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh

HISTSIZE=50000

alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
function google(){
  app='/Applications/Google Chrome.app/Contents/MacOS/Google Chrome'
  url='http://google.com/search?q='
  for query in $@
  do
    "$app" $url$query
  done
}
export -f google

eval "$(thefuck --alias)"


