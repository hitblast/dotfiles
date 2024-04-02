# Add autocompletion plugin for zsh.
source ~/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load pyenv for interactive shells.
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Zsh-specific configurations.
ZSH_THEME="powerlevel10k/powerlevel10k"
CASE_SENSITIVE="true"
DISABLE_LS_COLORS="true"
DISABLE_AUTO_TITLE="true"
HIST_STAMPS="mm/dd/yyyy"

# Enable auto updates.
zstyle ':omz:update' mode auto

# Add the necessary plugins for the shell.
plugins=(	
	git
	pyenv
	sudo
)

# Source Oh My Zsh.
source $ZSH/oh-my-zsh.sh

# Homebrew autocompletion.
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# Enable zoxide bridge to cd.
eval "$(zoxide init --cmd cd zsh)"

# Enable thefuck alias.
eval $(thefuck --alias)

# Source fzf.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source powerlevel10k theme.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



# Aliases and functions.
tagauto() {
  git tag --sign --message $2 $1
  git push origin --tags
}
