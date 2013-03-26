c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

# autocorrect is more annoying than helpful
unsetopt correct_all

# a few aliases I like
alias gs='git status'
alias gd='git diff'
alias tlog='tail -f log/development.log'

function tloga {
  tail -f ~/Library/Logs/Pow/apps/$1.log
}

function mkcd {
  mkdir $1 && cd $1
}

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
