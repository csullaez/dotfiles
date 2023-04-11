# Dotfiles

Configuration and customization files

This repository has the configuration for some tools such as:

- Vim
- Neovim
- Tmux
- Spaceship

#### Requirements

- Python 3
- Node js
  - Vim (version >=10)
  - Neovim (version >=16)

#### To install and configure Vim or NeoVim, you must have some plugins installed.

- PlugManager - vim-plug
  You can follow this link: https://github.com/junegunn/vim-plug

#### Add this line in your configuration file

source /Users/<YOUR_USER>/dotfiles/.vimrc
Note:

- For Vim, add it in the ~/.vimrc file.
- For Neovim, add it to the ~/.config/nvim/init.vim file.
  If in any case you don't have the file, create it and then add the above line.
  Once the previous step is finished, and PlugManager is installed, go to vim or nvim.
- For Vim
  ``` vim ```
- For Nvim
  ``` nvim ```
  run
  ``` :PlugInstall ```
  And all plugins found in the configuration files will be automatically installed.
