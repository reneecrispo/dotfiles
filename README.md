# Configure files

## Neovim installation

- Backup of your nvim dotfiles:
  
```Bash
mv .config/nvim .config/nvim.bak
```

- Clone this repo 
- Link local repo to your config:

```Bash
cd .config
ln -s path/where/you/cloned/this/repo/nvim .
```
- Install all the plugins in nvim:
```Bash
:PlugInstall
```
