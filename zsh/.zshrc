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

# Aliases
alias reload='source ~/.zshrc && echo "~/.zshrc has been sourced"'
alias brew-sync=' og_dir=$(pwd) && cd ~ && brew bundle && brew bundle cleanup --zap --force && cd $og_dir'
alias venv-a='source ./venv/bin/activate'
alias stow-apps='
original_dir=$(pwd) && cd ~/.cfg && for dir in */; do 
  pkg=${dir%/}
  echo "=== Stowing $pkg ==="
  stow -v -t ~ $pkg && echo "✓ $pkg successfully stowed" || echo "✗ Error stowing $pkg"
  echo ""
done && cd "$original_dir"'


bindkey \^U backward-kill-line