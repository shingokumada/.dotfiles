# **.dotfiles**

- **Configuration files for bash, neovim, and tmux are available.**
- **My operating environment is Ubuntu 22.04.4 LTS, and I have not tested it on other platforms.**
- **If you like the contents of the config file below, please clone this repository.**
- **manage is written as a bash script. (GNU bash, version 5.1.16(1)-release (x86_64-pc-linux-gnu))**
- **See the link for the project [configuration](https://github.com/shingokumada/.dotfiles/blob/ubuntu/docs/AboutDevelopment.md).**

**[ config files ]**

- **bash => [.bash_aliases](https://github.com/shingokumada/.dotfiles/blob/ubuntu/config/bash/.bashrc_origin)**
- **neovim => [init.vim](https://github.com/shingokumada/.dotfiles/blob/ubuntu/config/neovim/init.vim)**
- **tmux => [.tmux.conf](https://github.com/shingokumada/.dotfiles/blob/ubuntu/config/tmux/.tmux.conf)**

--------------------------------------------------------------------

### **[ How to use ]**

**There is a bash script in [manage](https://github.com/shingokumada/.dotfiles/blob/ubuntu/bin/manage) that will set things up.**

**There are several options in manage.**

```shell
$ cd $HOME
$ git clone https://github.com/shingokumada/.dotfiles.git
$ cd .dotfiles/bin
$ chmod 700 ./manage
$ ./manage -help
$ manage [$1] [$2]
---------------------------------------------------------
[$1]
-help : infomation
-bash : Bash configuration
-nvim : Neovim configration
-tmux : Tmux configration
[$2]
--checkout : Remove the symbolic link to the configfile.
---------------------------------------------------------
```

### **[ Bash ]**

**When you run this script, the path to manage will be set.**

```shell
$ ./manage -bash
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

### **[MIT](https://github.com/shingokumada/.dotfiles/blob/ubuntu/LICENSE)**
