ZSH=$HOME/.oh-my-zsh
export DISABLE_AUTO_UPDATE="true"
export ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  line_sep      # Line break
  jobs          # Background jobs indicator
  char          # Prompt character
)


SPACESHIP_RPROMPT_ORDER=(
  exec_time     # Execution time
  vi_mode       # Vi-mode indicator
  exit_code     # Exit code section
  time          # Time stamps section
)

SPACESHIP_PROMPT_ADD_NEWLINE="false"                          # Adds a newline character before each prompt line
SPACESHIP_PROMPT_SEPARATE_LINE="false"                        # Make the prompt span across two lines
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="false"                    # Shows a prefix of the first section in prompt
SPACESHIP_PROMPT_PREFIXES_SHOW="true"                         # Show prefixes before prompt sections or not
SPACESHIP_PROMPT_SUFFIXES_SHOW="true"                         # Show suffixes before prompt sections or not
SPACESHIP_PROMPT_DEFAULT_PREFIX="via"                         # Default prefix for prompt sections
SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "                           # Default suffix for prompt section
SPACESHIP_CHAR_PREFIX=""                                      # Prefix before prompt character
SPACESHIP_CHAR_SUFFIX=" "                                     # Suffix after prompt character
SPACESHIP_CHAR_SYMBOL="➜"                                     # Prompt character to be shown before any command
SPACESHIP_CHAR_SYMBOL_ROOT="$SPACESHIP_CHAR_SYMBOL"           # Prompt character to be shown before any command for the root user
SPACESHIP_CHAR_SYMBOL_SECONDARY="$SPACESHIP_CHAR_SYMBOL"      # Secondary prompt character to be shown for incomplete commands
SPACESHIP_CHAR_COLOR_SUCCESS="238"                            # Color of prompt character if last command completes successfully
SPACESHIP_CHAR_COLOR_FAILURE="red"                            # Color of prompt character if last command returns non-zero exit-code
SPACESHIP_CHAR_COLOR_SECONDARY="yellow"                       # Color of secondary prompt character
SPACESHIP_TIME_SHOW="true"                                    # Show time (set to true for enabling)
SPACESHIP_TIME_PREFIX=" "                                     # Prefix before time section
SPACESHIP_TIME_SUFFIX=""                                      # Suffix after time section
SPACESHIP_TIME_COLOR="238"                                    # Color of time section
SPACESHIP_TIME_FORMAT="false"                                 # Custom date formatting ZSH date formats
SPACESHIP_TIME_12HR="false"                                   # Format time using 12-hour clock (am/pm)
SPACESHIP_USER_SHOW="true"                                    # Show user section (true, false, always or needed)
SPACESHIP_USER_PREFIX=""                                      # Prefix before user section
SPACESHIP_USER_SUFFIX=""                                      # Suffix after user section
SPACESHIP_USER_COLOR="yellow"                                 # Color of user section
SPACESHIP_USER_COLOR_ROOT="red"                               # Color of user section when it is root
SPACESHIP_USER_SHOW="true"                                    # local/remote false: Never/Never, always: Always/Always, true: If needed/Always, needed: If needed/If needed,
SPACESHIP_HOST_SHOW="true"                                    # Show host section (true, false or always)
SPACESHIP_HOST_SHOW_FULL="false"                              # Show full hostname section (true, false)
SPACESHIP_HOST_PREFIX="@"                                     # Prefix before the connected SSH machine name
SPACESHIP_HOST_SUFFIX=":"                                     # Suffix after the connected SSH machine name
SPACESHIP_HOST_COLOR="blue"                                   # Color of host section
SPACESHIP_HOST_COLOR_SSH="green"                              # Color of host in SSH connection
SPACESHIP_DIR_SHOW="true"                                     # Show directory section
SPACESHIP_DIR_PREFIX=""                                       # Prefix before current directory
SPACESHIP_DIR_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"       # Suffix after current directory
SPACESHIP_DIR_TRUNC="0"                                       # Number of folders of cwd to show in prompt, 0 to show all
SPACESHIP_DIR_TRUNC_PREFIX=""                                 # Prefix before cwd when it is truncated. For example …/ or .../, empty to disable
SPACESHIP_DIR_TRUNC_REPO="true"                               # While in git repo, show only root directory and folders inside it
SPACESHIP_DIR_COLOR="white"                                   # Color of directory section
SPACESHIP_DIR_LOCK_SYMBOL=" "                                # The symbol displayed if directory is write-protected (requires powerline patched font)
SPACESHIP_DIR_LOCK_COLOR="red"                                # Color for the lock symbol
SPACESHIP_EXIT_CODE_SHOW="true"                               # Show exit code of last command
SPACESHIP_EXIT_CODE_PREFIX=" "                                # Prefix before exit code section
SPACESHIP_EXIT_CODE_SUFFIX=" "                                # Suffix after exit code section
SPACESHIP_EXIT_CODE_SYMBOL="✘"                                # Character to be shown before exit code
SPACESHIP_EXIT_CODE_COLOR="red"                               # Color of exit code section
SPACESHIP_EXEC_TIME_SHOW="true"                               # Show execution time
SPACESHIP_EXEC_TIME_PREFIX="took·"                            # Prefix before execution time section
SPACESHIP_EXEC_TIME_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX" # Suffix after execution time section
SPACESHIP_EXEC_TIME_COLOR="yellow"                            # Color of execution time section
SPACESHIP_EXEC_TIME_ELAPSED="2"                               # The minimum number of seconds for showing execution time section
SPACESHIP_VI_MODE_SHOW="true"                                 # Shown current Vi-mode or not
SPACESHIP_VI_MODE_PREFIX=""                                  # Prefix before Vi-mode section
SPACESHIP_VI_MODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"   # Suffix after Vi-mode section
SPACESHIP_VI_MODE_INSERT=""                                   # Text to be shown when in insert mode
SPACESHIP_VI_MODE_NORMAL=""                                  # Text to be shown when in normal mode
SPACESHIP_VI_MODE_COLOR="green"                               # Color of Vi-mode section


typeset -A ZSH_HIGHLIGHT_STYLES 

ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=yellow
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=green,underline
ZSH_HIGHLIGHT_STYLES[precommand]=fg=green,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[path]=underline
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=
ZSH_HIGHLIGHT_STYLES[globbing]=fg=blue
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=blue
ZSH_HIGHLIGHT_STYLES[command-substitution]=none
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=magenta
ZSH_HIGHLIGHT_STYLES[process-substitution]=none
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]=fg=magenta
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=magenta
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[rc-quote]=fg=cyan
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=cyan
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=cyan
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=fg=cyan
ZSH_HIGHLIGHT_STYLES[assign]=none
ZSH_HIGHLIGHT_STYLES[redirection]=none
ZSH_HIGHLIGHT_STYLES[comment]=fg=238,bold
ZSH_HIGHLIGHT_STYLES[named-fd]=none
ZSH_HIGHLIGHT_STYLES[arg0]=fg=green

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git fabric mercurial zsh-syntax-highlighting)
plugins=(git fabric taskwarrior vi-mode zsh-syntax-highlighting colorize colored-man-pages)

source $ZSH/oh-my-zsh.sh

if [[ `uname` == 'Linux' ]]; then
    export PATH=~/.local/bin:~/bin:/usr/lib/cw:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/usr/games
    export EDITOR=vim
    export VIM_COLOUR_SCHEME=mustang
    export SHARED_MEMORY=/dev/shm/
    export USERWM=`which xmonad`
    autoload -U edit-command-line
    zle -N edit-command-line
    bindkey '\C-x\C-e' edit-command-line
    # Uncomment following line if you want red dots to be displayed while waiting for completion
    # COMPLETION_WAITING_DOTS="true"
    alias wiki='vim -c "VimwikiIndex"'


export function xmobar_external_ip () {
    curl http://automation.whatismyip.com/n09230945.asp
}



export function xmobar_check_volume () {
    amixer sget Master | awk -F [ '/%/{ print substr($2, 1, length($2)-3) }'
}

else
    export PATH=$HOME/.local/bin:$HOME/bin:/Users/marcel/.cabal/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:~/Library/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/X11R6/bin:/usr/local/mysql/bin:/usr/local/texlive/2014basic/bin/x86_64-darwin
    # export PATH=$HOME/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/local/bin/:~/Library/bin::/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/X11R6/bin::/usr/local/mysql/bin:/sw/bin

    export CDPATH=$CDPATH:~/hama/Work:~/hama
    # export http_proxy='localhost:8080'

    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias ll='ls -l'
    alias la='ls -A'
    alias lla='ls -al'
    alias l='ls -CF'
    alias guppy='/Library/Frameworks/Python.framework/Versions/2.7/bin/guppy' 
    alias feh='feh -Fd'
    # alias ipython='ipython --colors=Linux'
    alias vim=/usr/local/bin/vim
    alias mplayer=/usr/local/bin/mplayer
    alias lilypond="/Applications/LilyPond.app/Contents/Resources/bin/lilypond"
    alias tmux=/usr/local/bin/tmux
    # alias irssi=/sw/bin/irssi
    alias ctags=/usr/local/bin/ctags
    alias wiki='vim -c "VimwikiIndex"'
    alias cmus='~/bin/cmus/cmus'
    alias gs='/usr/local/bin/gs'
    alias git='/usr/local/git/bin/git'
    alias report="sh /Users/Shared/hama/Presenter/metadata/send.sh"

    export EDITOR=/usr/local/bin/vim
    export PAGER=less
    # export VIM_COLOUR_SCHEME=solarized
    export VIM_COLOUR_SCHEME=mustang
    export VIMCONFIG=~/.vim
    export VIMDATA=~/.vim	
    export SHARED_MEMORY=/Volumes/temp/
    # Uncomment following line if you want disable red dots displayed while waiting for completion
    # DISABLE_COMPLETION_WAITING_DOTS="true"
    clear
fi


# fpath=(~/.completion $fpath)
# autoload -U ~/.completion/*(:t)
compinit
setopt complete_aliases

export function chart() { 
for i in {0..255};
do printf "\x1b[38;5;${i}mcolor%-5i\x1b[0m" $i ;
    if ! (( ($i + 1 ) % 8 ));
    then echo ;
    fi ;
done
}

export function ppage() { 
    awk -F'\t'  '/'"$1"'/{ printf("%10s%3s %s\n", $1, $4, $3)}' /Users/Shared/hama/Presenter/metadata/pagination/presenter.txt 
}



# . /Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias in='task add +IN'
alias ttin='clear;task GDT_inbox'
alias ttmb='clear;task GDT_maybe rc._forcecolor=on '
alias ttnx='clear;task GDT_next'
alias ttwt='clear;task waiting'

tickle () {
    deadline=$1
    shift
    in +tickle wait:$deadline $@
}

alias tick=tickle
alias think='tickle +1d'
alias rnd='task add +rnd'
webpage_title (){
    wget -qO- "$*" | hxselect -s '\n' -c  'title' 2>/dev/null
}

read_and_review (){
    link="$1"
    title=$(webpage_title $link)
    echo $title
    descr="\"Read and review: $title\""
    id=$(task add +next +rnr "$descr" | sed -n 's/Created task \(.*\)./\1/p')
    task "$id" annotate "$link"
}

alias rnr=read_and_review

