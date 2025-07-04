# needed for history and autosuggestions
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=true
export HISTFILE=~/.zhistory
export _JAVA_AWT_WM_NONREPARENTING=1
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export HISTSIZE=10000
export SAVEHIST=10000
# enable autosuggestions
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
# make midnight commander colorful
export TERM=xterm-256color
# by default backspace deletes whole word
bindkey "^H" backward-delete-char
# up/down should search in history not step
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
# colored prompt
autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%/ %{$reset_color%}% "
# called when executing a command
function preexec {
    print -Pn "\e]0;${(q)1}\e\\"
}

# startup sway on login on terminal 1
if [ "$(tty)" = "/dev/tty1" ] || [ "$(tty)" = "/dev/ttyv0" ] ; then
    if [ -z "$XDG_RUNTIME_DIR" ]; then
	# for FreeBSD and Void Linux
	export XDG_RUNTIME_DIR="/tmp/$UID"
	[[ ! -d $XDG_RUNTIME_DIR ]] && mkdir -p $XDG_RUNTIME_DIR && chmod 0700 $XDG_RUNTIME_DIR
    fi
    export QT_QPA_PLATFORMTHEME=gtk2
    export QT_QPA_PLATFORM=wayland
    export GDK_BACKEND=wayland
    export XDG_SESSION_TYPE=wayland
    export XDG_CURRENT_DESKTOP=sway
    export WLR_NO_HARDWARE_CURSORS=1
    exec sway
fi


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="m3-round"
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias c="clear"
alias mouse='sudo modprobe -r psmouse && sudo modprobe psmouse'
alias vi="nvim"
alias i="sudo pacman -S"
alias u="sudo pacman -Rns"
alias update="yay -Syu"
alias swayconf="vi ~/.config/sway/config"
alias zshconf="vi ~/.zshrc"
alias adj-sens="sway input 'type:touchpad' pointer_accel"
alias gp="find ~ -name \".git\" -type d -exec bash -c \"echo '{}' && cd '{}'/.. && git pull\" \\;"
alias paclear='sudo pacman -Rns $(pacman -Qtdq)'
alias n="nmtui"
alias ff="fastfetch"
alias tsu="sudo tailscale up"
alias tsd="sudo tailscale down"
alias wgu="wg-quick up wg0"
alias wgd="wg-quick down wg0"
alias k="kubectl"
alias mirroring="wl-present mirror eDP-1 --fullscreen-output HDMI-A-1 --fullscreen"

# pnpm
export PNPM_HOME="/home/geno/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/geno/.opam/opam-init/init.zsh' ]] || source '/home/geno/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


PATH="/home/geno/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/geno/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/geno/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/geno/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/geno/perl5"; export PERL_MM_OPT;
