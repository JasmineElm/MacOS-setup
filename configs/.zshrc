### POWERLEVEL 10K
if [[ ! -d ~/powerlevel10k ]]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
fi


ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f  ~/powerlevel10k/powerlevel10k.zsh-theme ]] || source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



## Local functions / aliases
[[ ! -f ~/.shell_functions ]] || source ~/.shell_functions
[[ ! -f ~/.aliases ]] || source ~/.aliases
[[ ! -f ~/.secret_aliases ]] || source ~/.secret_aliases


# Case insensitive completion (lower > * _ONLY_)
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

GEM_HOME="$HOME/gems"

# Path needs to have GEM_HOME close to the beginning...
PATH=$HOME/gems/bin:$PATH:/snap/bin:$HOME/Scripts:$PATH:$HOME/.local/bin

# add date to `history`
export HISTTIMEFORMAT="%m/%d - %H:%M:%S: "
# move history to .zsh_history, with a new file per day
setopt EXTENDED_HISTORY
HISTFILE=~/.zsh_history


# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

## Variables

[[ -f ~/.env_vars ]] && source ~/.env_vars
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3 # run chruby to see actual version
source <(fzf --zsh)
eval "$(zellij setup --generate-auto-start zsh)"
