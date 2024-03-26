# 文字コード
export LANG=ja_JP.UTF-8

# 日本語ファイルを表示可能に
setopt print_eight_bit

# gcloud
source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc

# NVM
export NVM_DIR=$HOME/.nvm
[ -s /opt/homebrew/opt/nvm/nvm.sh ] && \. /opt/homebrew/opt/nvm/nvm.sh  # This loads nvm
[ -s /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm ] && \. /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm  # This loads nvm bash_completion

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-completion
if type brew &>/dev/null; then
 FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
 autoload -Uz compinit
 compinit
fi

# Git利用時のプロンプト表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM=auto

# git-promptの読み込み
source ~/.zsh/git-prompt.sh
setopt PROMPT_SUBST ; PS1='%F{green}@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f\$ '

# git-completionの読み込み
fpath=(~/.zsh /usr/local/share/zsh/site-functions /usr/share/zsh/site-functions /usr/share/zsh/5.9/functions)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# 選択中の候補の色を反転させる
zstyle ':completion:*' menu select

# コマンドのスペルミス時に候補を表示
setopt correct

# historyに保存する際に余計なスペースを削除する
setopt hist_reduce_blanks

# 同じコマンドをhistoryに残さない
setopt hist_ignore_all_dups

# alias
alias ga='git add'
alias gb='git brach'
alias gcm='git commit -m'
alias gco='git checkout'
alias gp='git push origin HEAD'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdl='git diff --name-only'
alias gl='git log --oneline --graph --decorate'

# zsh-syntax-hilighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
