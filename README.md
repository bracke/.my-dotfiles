# my-dotfiles

## Setup
```sh
git init --bare $HOME/.my-dotfiles
alias config='git --git-dir=$HOME/.my-dotfiles/ --work-tree=$HOME'
config remote add origin git@github.com:bracke/.my-dotfiles.git
```
## Installation of prerequisites
```sh
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git figlet curl micro fortune-mod tldr fortunes-de silversearcher-ag fonts-powerline net-tools bc xclip
micro -plugin install filemanager
micro -plugin install snippets
```

## Replication
```sh
git clone --separate-git-dir=$HOME/.my-dotfiles https://github.com/bracke/.my-dotfiles.git my-dotfiles-tmp
rsync --recursive --verbose --exclude '.git' my-dotfiles-tmp/ $HOME/
rm --recursive my-dotfiles-tmp
```

## Configuration
```sh
config config status.showUntrackedFiles no
config remote set-url origin https://github.com/bracke/.my-dotfiles.git
```

## Usage
```sh
config status
config add .gitconfig
config commit -m 'Add gitconfig'
config push
```
