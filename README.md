# Dotfiles

This  repo is meant to house my dotfiles/config files 

## Set up a new machine:

1. Install Homebrew:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
2. Clone this repo to the root of your user directory
3. Install all your packages via brew(this is just for the first install):
``` bash
export HOMEBREW_BUNDLE_FILE="~/.cfg/Brewfile" 
brew bundle
```

4. Install oh-my-zsh:
```bash
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

5. Run stow(it may ask you delete some files):
```bash 
for dir in ./; do echo "Stowing ${dir%/}..."; stow -v -t ~ ${dir%/}; done
```

6. Check the ./ssh/.ssh/config file for the format of ssh keys

1. Set up bitwarden, brave, raycast, alt-tab, google-drive, cryptomator, oversight

Note: Disable window management on raycast, and disable window tiling on macos 

### Some useful alaises:
1. stow-apps - will symlink all directories under config
2. brew-sync - will install all brews/casks in the brewfile and remove any that are not there as well their dependencies




