ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color
export EDITOR="nvim"
export WINIT_HIDPI_FACTOR=1
export RIPGREP_CONFIG_PATH=$HOME/.config/ripgreprc
export ZEPHYR_TOOLCHAIN_VARIANT=zephyr

source $HOME/.nvm/nvm.sh
source $HOME/.zshrc_private
source <(fzf --zsh)

plugins=(git npm nvm node vi-mode docker yarn deno jump)

source $ZSH/oh-my-zsh.sh

alias mc="mc -bsx"
alias j=jump
alias p=pwd
alias c='cut -b -$COLUMNS'
alias b=buku
alias xo=xdg-open
alias yr='yarn run'
alias yrs='yarn run start'
alias nr='npm run'
alias gpo='git push origin $(git_current_branch)'
alias gpuf='git push origin $(git_current_branch) --force-with-lease'
alias gaw='git add -A && git diff --cached -w | git apply --cached -R'
alias ganw='git diff -w | git apply --cached --ignore-whitespace'
alias gsta='git stash save --include-untracked'
alias grbi='git rebase -i --autosquash'
alias gup='git pull --rebase --autostash'
alias gst='git status'
unalias gm
alias vim=nvim
alias vi=nvim
alias t='tock -m -c -f ""'

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.go/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin

export ANDROID_HOME=$HOME/.local/opt/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/build-tools/23.0.3

_gen_fzf_default_opts() {
  local base03="234"
  local base02="235"
  local base01="240"
  local base00="241"
  local base0="244"
  local base1="245"
  local base2="254"
  local base3="230"
  local yellow="136"
  local orange="166"
  local red="160"
  local magenta="125"
  local violet="61"
  local blue="33"
  local cyan="37"
  local green="64"

  export FZF_DEFAULT_OPTS="
    --color fg:-1,bg:-1,hl:$blue,fg+:$base02,bg+:$base2,hl+:$blue
    --color info:$yellow,prompt:$yellow,pointer:$base03,marker:$base03,spinner:$yellow
    --height 50%
    --layout reverse
  "
}
_gen_fzf_default_opts
export FZF_DEFAULT_COMMAND='ag -l --path-to-ignore ~/.ignore --nocolor --hidden -g ""'

bindkey -r "^U"
bindkey '^w' history-incremental-search-backward
bindkey "^H" backward-kill-word

KEYTIMEOUT=1

unsetopt completealiases

CHTSH_QUERY_OPTIONS="style=tango"

pfxUnzipRequest() {
  printf "\x1f\x8b\x08\x00\x00\x00\x00\x00" \
  | cat - "$1.zlib" \
  | gzip -dc 2> /dev/null \
  | jq '.' --indent 2 > "$1.json"
}

pfxDecodeRequest() {
  cat $1 | base64 -d > $1.zlib
  pfxUnzipRequest $1
  rm $1.zlib
}

function set-title() {
  export DISABLE_AUTO_TITLE="true"
  echo -en "\e]2;$@\a"
}

function layout-vertical {
  xrandr-smart --output 'eDP-*' --auto \
               --output '!(eDP-*)' --auto --above 'eDP-*'
}

function layout-horizontal {
  xrandr-smart --output 'eDP-*' --auto \
               --output '!(eDP-*)' --auto --right-of 'eDP-*'
}

function layout-clone {
  xrandr-smart --output 'eDP-*' --auto \
               --output '!(eDP-*)' --auto --same-as 'eDP-*'
}

function layout-extonly {
  xrandr-smart --output '!(eDP-*)' --auto
}

# source /home/vita/Sources/zmk/zephyr/zephyr-env.sh
n ()
{
  # Block nesting of nnn in subshells
  [ "${NNNLVL:-0}" -eq 0 ] || {
      echo "nnn is already running"
      return
  }

  export NNN_FIFO='/tmp/nnn.fifo'
  export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

  export NNN_PLUG='e:!&easytag "$nnn";p:preview-tui;s:local/split-folder;o:fzopen;c:fzcd;m:nmount'

  export NNN_BMS="d:$HOME/Downloads;a:$HOME/Audio/Audiobooks"
  export NNN_COLORS="5236"

  export sel=${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.selection

  command nnn -ae "$@"

  [ ! -f "$NNN_TMPFILE" ] || {
    . "$NNN_TMPFILE"
    rm -f -- "$NNN_TMPFILE" > /dev/null
  }
}

