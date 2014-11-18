# docker-helpers

This is a collection of docker helper scripts, packaged as a zsh plugin to make it easier to use with [antigen](https://github.com/zsh-users/antigen).

Most of these were collected from blog posts, gists, etc, and I've given credit where I know the source.

# Installing

## Antigen
add `antigen bundle unixorn/docker-helpers.zshplugin` to your `.zshrc` with your other plugins.

## Oh-My-Zsh
1. cd to your `oh-my-zsh` plugins directory (~/.oh-my-zsh/custom/plugins)
2. `git clone https://github.com/unixorn/docker-helpers.zshplugin docker-helpers`
3. Add docker-helpers to your plugins in your `.zshrc`
```zsh
...
plugins=(current list of plugins docker-helpers)
...
```

# Docker helper scripts

* boot2docker-timesync - boot2docker drifts out of time sync every time I sleep my MacBook Pro. Run this to resync
* docker-container-volumes - List the volumes attached to a container
* docker-purge-unnamed-images - Cleans up image cruft by deleting all the images that aren't named.
