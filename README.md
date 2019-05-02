# My configuration files.

Installation for the following things are provided:
- tmux
- vim
- other useful tools
    - htop
    - openssh-server
    - git
    - zsh
    - curl
    - tree
    - silversearcher-ag
    - cmake

**Note**: `.tmux.conf` and `.vimrc` will be replaced by the configuration files in this repo, and plugins of `vim` will be installed including `YouCompleteMe`.

## Usage

```bash
git clone https://github.com/hkzhang95/myconfig.git [path]
# install useful tools, permission for sudo is needed
./install.sh
# set up tmux and vim
# YCM needs cmake to compile (if you need semantic support for C-family languages)
./setup.sh
```
