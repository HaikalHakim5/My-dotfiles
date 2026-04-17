# --- FASTFETCH ---
fastfetch

# --- ALIASES ---
alias ls='eza --icons --group-directories-first --color=always'
alias ll='eza -lh --icons --group-directories-first'
alias lt='eza --tree --level=2 --icons'

# --- SETTINGAN HISTORY ---
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt HIST_REDUCE_BLANKS

# --- FUNGSI GANTIWALL (Hyprland) ---
if [ -f ~/.config/zsh/wallpaper.zsh ]; then
    source ~/.config/zsh/wallpaper.zsh
fi

# --- TOOLS & EXPORTS ---
eval "$(zoxide init zsh)"

export EDITOR="nvim"
export PATH=$PATH:/home/alhakiim/.spicetify

# --- STARSHIP ---
eval "$(starship init zsh)"

# --- PLUGINS  ---
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- CUSTOM PLUGIN STYLES ---

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#585b70'

ZSH_HIGHLIGHT_STYLES[path]='none'
ZSH_HIGHLIGHT_STYLES[path_prefix]='none'
ZSH_HIGHLIGHT_STYLES[path_approx]='none'
ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='none'
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='none'

ZSH_HIGHLIGHT_STYLES[number]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[option]='fg=#fab387'
ZSH_HIGHLIGHT_STYLES[bracket]='fg=#f9e2af'
