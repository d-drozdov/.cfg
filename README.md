# .cfg

This  repo is meant to house my dotfiles/config files and walk through how to set up a new machine fast

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

5. Run stow(it may ask you to delete some files):
```bash 
for dir in ./; do echo "Stowing ${dir%/}..."; stow -v -t ~ ${dir%/}; done
```

6. Check the ./ssh/.ssh/config file for the format of ssh keys

1. Set up bitwarden, brave, raycast, alt-tab, google-drive, cryptomator, oversight

Note: Disable window management on raycast, and disable window tiling on macos 

### Some useful alaises:
1. stow-apps - will symlink all directories under config
2. brew-sync - will install all brews/casks in the brewfile and remove any that are not there as well their dependencies


## Helpful Things to do:

### Setup Touch ID for sudo commands:
```bash
sudo cp /etc/pam.d/sudo_local.template /etc/pam.d/sudo_local
```

```bash
sudo vim /etc/pam.d/sudo_local
```

Lastly uncomment `#auth       sufficient     pam_tid.so`

Restart your terminal and run `sudo ls` to verify everything is working

### Change where screenshots are saved:

```bash
mkdir Screenshots
defaults write com.apple.screencapture location ~/Screenshots
killall SystemUIServer
```



### If you can't push for some reason:
```bash 
git remote set-url origin git@github.com:d-drozdov/.cfg.git
```