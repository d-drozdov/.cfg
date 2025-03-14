# Enable completion
autoload -Uz compinit
compinit


# Enable syntax highlighting (Homebrew installation)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $(brew --prefix)

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
alias venv-a='source ./venv/bin/activate'
alias stow-apps='
original_dir=$(pwd) && cd ~/.cfg && for dir in */; do 
  pkg=${dir%/}
  echo "=== Stowing $pkg ==="
  stow -v -t ~ $pkg && echo "✓ $pkg successfully stowed" || echo "✗ Error stowing $pkg"
  echo ""
done && cd "$original_dir"'

# Flutter
export PATH="~/Developer/Libraries/flutter/bin:$PATH"


## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/daniel/.dart-cli-completion/zsh-config.zsh ]] && . /Users/daniel/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export PATH="$PATH:${HOME}/fvm/default/bin"
source ~/.tecli.zsh

# Created by `pipx` on 2025-03-02 01:14:15
export PATH="$PATH:/Users/daniel/.local/bin"



bindkey \^U backward-kill-line