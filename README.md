# **.dotfiles**

**Configuration files for bash, neovim, and tmux are available.**

**My operating environment is Ubuntu 22.04.4 LTS, and I have not tested it on other platforms.**

**configs**

- **[.bashrc_origin](config/bash/.bashrc_origin)**

- **[init.vim](config/neovim/init.vim)**

- **[tmux.conf](config/tmux/.tmux.conf)**

## **How to use**

```shell
cd $HOME
git clone https://github.com/shingokumada/.dotfiles.git
cd .dotfiles
./manage
```

## **Bash**

```shell
echo "source ~/.bashrc_origin" >> ~/.bashrc
source ~/.bashrc
```

## **Neovim**

**plugin manager :**

- **[vim-plug](https://github.com/junegunn/vim-plug)**

**plugin :**

- **[coc.nvim](https://github.com/neoclide/coc.nvim)**
- **[fzf](https://github.com/junegunn/fzf)**
- **[nerdtree](https://github.com/preservim/nerdtree)**
- **[vim-horizon](https://github.com/ntk148v/vim-horizon)**

## **LICENSE**

### **[MIT](LICENSE)**
