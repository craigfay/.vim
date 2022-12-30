
# Managing Plugins

Since version 8, Vim will auto-load plugins in directories matching `~/.vim/pack/*/start/`. This makes it convenient to manage plugins using git submodules instead of a package manager like Plug or [Pathogen](https://github.com/tpope/vim-pathogen).


# How To Add Plugins

```
git submodule add <git-address> ./pack/plugins/start/<plugin-name>`
```


# How To Update Plugins

```
git submodule update --remote --merge
git commit
```

# How To Remove Plugins

```
git submodule deinit ./pack/plugins/start/<plugin-name>
git rm ./pack/plugins/start/<plugin-name>
rm -Rf .git/modules/pack/plugins/start/<plugin-name>
git commit
```


# Where Can I Put My RC File?

```
:help $MYVIMRC
```
