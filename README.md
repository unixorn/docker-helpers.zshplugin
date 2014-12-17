# docker-helpers

This is a collection of docker helper scripts, packaged as a zsh plugin to make it easier to use with [antigen](https://github.com/zsh-users/antigen).

Most of these were collected from blog posts, gists, etc, and I've given credit where I know the source.

# Installing

## Antigen
Add `antigen bundle unixorn/docker-helpers.zshplugin` to your `.zshrc` with your other plugins. You can test drive them without editing your .zshrc by running `antigen bundle unixorn/docker-helpers.zshplugin` in a running zsh session.

## Oh-My-Zsh
1. cd to your `oh-my-zsh` plugins directory (~/.oh-my-zsh/custom/plugins)
2. `git clone https://github.com/unixorn/docker-helpers.zshplugin docker-helpers`
3. Add docker-helpers to your plugins in your `.zshrc`
```zsh
...
plugins=( ... docker-helpers ...)
...
```

# Docker helper scripts

Command | Description | Credit
------- | ----------- | ------
| boot2docker-timesync | boot2docker drifts out of time sync every time my MacBook Pro sleeps. Run this to resync |
| docker-container-volumes | List the volumes attached to a container | [http://www.tech-d.net/2014/05/05/docker-quicktip-5-backing-up-volumes/](http://www.tech-d.net/2014/05/05/docker-quicktip-5-backing-up-volumes/))
| docker-create-backup-container | Creates a container with all the volumes from all the containers on the host | [From http://www.tech-d.net/2014/05/05/docker-quicktip-5-backing-up-volumes/](From http://www.tech-d.net/2014/05/05/docker-quicktip-5-backing-up-volumes/)
| docker-delete-stopped-containers | Cleans up stale stopped containers |
| docker-last | print the id of the last container you ran |
| docker-purge-unnamed-images | Cleans up image cruft by deleting all the images that aren't named. |
| docker-superclean | Clear out any stopped containers or stale images |

# Other useful Docker stuff

If you use [Sublime Text 2/3](http://sublimetext.com), check out [sublime-docker](https://github.com/dockerparis/sublime-docker). Lets you build inside Docker containers directly from [Sublime Text](http://sublimetext.com).
