<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [docker-helpers](#docker-helpers)
- [Docker helper scripts](#docker-helper-scripts)
- [Installing](#installing)
  - [Pre-Requisites](#pre-requisites)
  - [zgen](#zgen)
  - [Antigen](#antigen)
  - [Oh-My-Zsh](#oh-my-zsh)
- [Other useful Docker stuff](#other-useful-docker-stuff)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# docker-helpers

This is a collection of docker helper scripts, packaged as a zsh plugin to make it easier to use with [antigen](https://github.com/zsh-users/antigen).

Most of these were collected from blog posts, gists, slack - basically stuff I saw and thought was useful enough to stash away, and I've given credit where I know the source.

If you wrote something I've collected and I didn't credit you, please create an issue or PR so I can correct it.

# Docker helper scripts

Command | Description | Credit
------- | ----------- | ------
| `boot2docker-timesync` | boot2docker drifts out of time sync every time my MacBook Pro sleeps. Run this to resync. |
| `docker-container-volumes` | List the volumes attached to a container. | [http://www.tech-d.net/2014/05/05/docker-quicktip-5-backing-up-volumes/](http://www.tech-d.net/2014/05/05/docker-quicktip-5-backing-up-volumes/))
| `docker-create-backup-container` | Creates a container with all the volumes from all the containers on the host. | [From http://www.tech-d.net/2014/05/05/docker-quicktip-5-backing-up-volumes/](From http://www.tech-d.net/2014/05/05/docker-quicktip-5-backing-up-volumes/)
| `docker-delete-stopped-containers` | Cleans up stale stopped containers. |
| `docker-enter` | Install/Run jpetazzo's `nsenter`. |
| `docker-last` | print the id of the last container you ran. |
| `docker-purge-unnamed-images` | Cleans up image cruft by deleting all the images that aren't named. |
| `docker-runinc` | Uses [fzf](https://github.com/junegunn/fzf) to select a running container and run a command inside it. |
| `docker-showipc` | Show the IP of a running docker container. |
| `docker-stopc` | Stops and/or removes a docker container. |
| `docker-superclean` | Clear out any stopped containers or stale images. |
| `docker-update-all-images` | Update all images on the machine. |

# Installing

## Pre-Requisites

`jq` - Install with `brew install jq`

## zgen

Add `zgen load unixorn/docker-helpers.zshplugin` to your `.zshrc` wherever you're loading your other plugins.

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

# Other useful Docker stuff

* If you use [Sublime Text 2/3](http://sublimetext.com), check out [sublime-docker](https://github.com/dockerparis/sublime-docker). Lets you build inside Docker containers directly from [Sublime Text](http://sublimetext.com).
* [dive](https://github.com/wagoodman/dive) - A tool for exploring a docker image, layer contents, and discovering ways to shrink your Docker image size.