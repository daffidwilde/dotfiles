# My dotfiles repository

Using [dotbot](https://github.com/anishathalye/dotbot) as a manager.

## Installation

As simple as:

```
git clone --recursive git@github.com:daffidwilde/dotfiles.git .dotfiles
cd .dotfiles
./install
```

## Setting up ZSH, ViM, etc.

Use oh-my-zsh and change the default shell:

```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s /bin/zsh
```

On macOS, use homebrew for non-Python things. This is used to install MacViM,
tmux and htop. First, install homebrew:

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

To get nice ViM, install MacViM. Then the alias in the `zshrc` deals with the
rest:
```
brew install macvim
```

Everything else is easy enough.


If more dotfiles are added, then edit the `install.conf.yaml` file accordingly.
