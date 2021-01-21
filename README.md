# homebrew-linuxsuren

# For Linux users
It's pretty easy to install brew in Linux. Please see the following commands (or get details from https://brew.sh/):
```
useradd -m linuxbrew
su linuxbrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bashrc
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bashrc
```

# HTTP downloader
```
brew install linuxsuren/linuxsuren/hd
```

# Git clone faster
```
brew install linuxsuren/linuxsuren/cgit
```

# Docker image puller
[mp](https://github.com/linuxsuren/mirrors/) is a tool which can help you pull Docker image faster.

```
brew install linuxsuren/linuxsuren/mp
```

# KubeSphere CLI
[ks](https://github.com/linuxsuren/ks) is a CLI which makes you type less words when you're working with [KubeSphere](https://github.com/kubesphere/kubesphere).

```
brew install linuxsuren/linuxsuren/ks
```
