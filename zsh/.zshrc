# Enable completion
autoload -Uz compinit
compinit

# Enable syntax highlighting (Homebrew installation)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Oh-My-Zsh setup
export ZSH="$HOME/.oh-my-zsh"
plugins=(git z docker aws direnv)
source $ZSH/oh-my-zsh.sh

# Initialize starship prompt
eval "$(starship init zsh)"

# Disable Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# fzf
source <(fzf --zsh)
# fd commands
export FZF_DEFAULT_COMMAND='fd --type f --type l --hidden --follow'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow'

# fzf options
export FZF_DEFAULT_OPTS="
  --height 100%
  --border
  --preview 'if [[ -f {} ]]; then bat --style=numbers --color=always --line-range :500 {}; elif [[ -d {} ]]; then tree -C -L 2 {}; fi'
  --preview-window=right:50%:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-u:preview-half-page-up'
  --bind 'ctrl-d:preview-half-page-down'
"
# ghostty
# export GHOSTTY_SHELL_INTEGRATION_NO_CURSOR=1

# Aliases
alias brew-sync=' og_dir=$(pwd) && cd ~ && brew bundle && brew bundle cleanup --zap --force && cd $og_dir'
alias stow-apps='
original_dir=$(pwd) && cd ~/.cfg && for dir in */; do 
  pkg=${dir%/}
  echo "=== Stowing $pkg ==="
  stow -v -t ~ $pkg && echo "✓ $pkg successfully stowed" || echo "✗ Error stowing $pkg"
  echo ""
done && cd "$original_dir"'
alias git-cleanup='~/.git-clean-stale'


bindkey \^U backward-kill-line


