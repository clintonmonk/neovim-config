# neovim-config

Required:
1. [Install neovim.](https://github.com/neovim/neovim/wiki/Installing-Neovim#macos--os-x)
   ```
   brew install neovim
   ```
1. [Install pyenv.](https://github.com/pyenv/pyenv#homebrew-on-mac-os-x)
   ```
   brew install pyenv
   ```
1. [Install pyenv neovim bindings.](https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim#using-virtual-environments)
   ```
   pyenv install 2.7.11
   pyenv install 3.4.4

   pyenv virtualenv 2.7.11 neovim2
   pyenv virtualenv 3.4.4 neovim3

   pyenv activate neovim2
   pip install neovim
   pyenv which python

   pyenv activate neovim3
   pip install neovim
   pyenv which python
   ```
1. [Install gocode.](https://github.com/nsf/gocode)
   ```
   go get -u github.com/nsf/gocode
   ```
