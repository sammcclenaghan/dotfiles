if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Make Antigen always available to zsh
source /opt/homebrew/share/antigen/antigen.zsh

setopt hist_ignore_all_dups
setopt hist_ignore_space
HISTSIZE=9999
MAGIC_ENTER_OTHER_COMMAND='ls'
MAGIC_ENTER_GIT_COMMAND='git status -u .'

antigen use oh-my-zsh

# Non omz plugins
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

# omg plugins
antigen bundle command-not-found
antigen bundle magic-enter

antigen theme romkatv/powerlevel10k
antigen apply

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(zoxide init zsh)"
