(cat ~/.cache/wal/sequences &)


# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

[[ -f ~/.zsh_plugins.zsh ]] && source ~/.zsh_plugins.zsh

# P10K Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# OH MY ZSH
export PATH="$HOME/.cargo/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

plugins=(git)
source $ZSH/oh-my-zsh.sh

# Aliases
alias lg="lazygit"
alias g="git"
alias d="docker"
alias code='code --ozone-platform="wayland" --enable-features="WaylandWindowDecorations"'

# Other Tools
eval $(thefuck --alias)
eval "$(zoxide init zsh)"

# Gnome Fixes
export QT_QPA_PLATFORMTHEME='gnome'
export XCURSOR_SIZE=24

# Default Editor
export EDITOR="nvim"
export VISUAL="nvim"
export PATH="$HOME/.local/bin:$PATH"

# bun completions
[ -s "/home/est/.bun/_bun" ] && source "/home/est/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/home/est/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


# go
export PATH=$PATH:/usr/local/go/bin
export GOPATH="${GOPATH:-$HOME/go}"
export GOBIN="${GOBIN:-$GOPATH/bin}"
export PATH="$PATH:$GOBIN"
# pnpm end
#
#

# opencode
export PATH=/home/est/.opencode/bin:$PATH
