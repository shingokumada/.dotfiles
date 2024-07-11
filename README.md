# **.dotfiles**

- **Configuration files for bash, neovim, and tmux are available.**
- **My operating environment is Ubuntu 22.04.4 LTS, and I have not tested it on other platforms.**
- **If you like the contents of the config file below, please clone this repository.**
- **manage is written as a bash script. (GNU bash, version 5.1.16(1)-release (x86_64-pc-linux-gnu))**

**[ config files ]**

- **bash => [.bashrc_origin](https://github.com/shingokumada/.dotfiles/blob/ubuntu/config/bash/.bashrc_origin)**
- **neovim => [init.vim](https://github.com/shingokumada/.dotfiles/blob/ubuntu/config/neovim/init.vim)**
- **tmux => [.tmux.conf](https://github.com/shingokumada/.dotfiles/blob/ubuntu/config/tmux/.tmux.conf)**

--------------------------------------------------------------------

## **How to use**

**There is a bash script in [manage](https://github.com/shingokumada/.dotfiles/blob/ubuntu/manage) that will set things up.**

**There are several options in manage.**

```shell
$ cd $HOME
$ git clone https://github.com/shingokumada/.dotfiles.git
$ cd .dotfiles
$ ./manage -help
--------- opstions ----------
-help : infomation
-bash : Bash configuration
-nvim : Neovim configration
-tmux : Tmux configration
-----------------------------
```
--------------------------------------------------------------------
### **[ Bash ]**

**When you run this script, the path to manage will be set.**

```shell
$ ./manage -bash
$ echo "source ~/.bashrc_origin" >> ~/.bashrc
$ source ~/.bashrc
```
--------------------------------------------------------------------

### **[ Neovim ]**

```shell
$ ./manage -nvim
```

**[ plugin manager ]**

- **[vim-plug](https://github.com/junegunn/vim-plug)**

**[ plugins ]**

- **[coc.nvim](https://github.com/neoclide/coc.nvim)**
- **[fzf](https://github.com/junegunn/fzf)**
- **[nerdtree](https://github.com/preservim/nerdtree)**
- **[vim-horizon](https://github.com/ntk148v/vim-horizon)**

--------------------------------------------------------------------

### **[ Tmux ]**

```shell
$ ./manage -tmux
$ tmux
$ tmux source ~/.tmux.conf
```

--------------------------------------------------------------------

### **[ LICENSE ]**

### **[MIT](https://github.com/shingokumada/.dotfiles/blob/ubuntu/README.md)**
