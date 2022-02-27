# Dot Files

Just a repertoire of the configuration I use on my machine.

## Usage

To install my entire setup:

```shell
./install.sh
```

The repo structure is meant to be used in coordination with GNU's `stow`, as it
makes it super easy to deploy on a new machine. `stow <path-to-directory>`
without the `/` will install the associated config using symlinks for ease of
update.

And since I'm using a mac, I'm running brew (fairly naively)

## Available configuration

I don't use _that_ much software to begin with, so the list is pretty short:

- `neovim` which is my primary text editor. The config is not compatible with
  `vim` as I'm using plenty of lua.
- `kitty` my terminal of choice as I find `iTerm2` and `hyper` slightly too
  laggy for terminal use, and `alacritty` is not a great macos citizen
- `git` because that's pretty much required these days. I prefer `hg`, but
  such is the world we live in
- `fish` as my shell. It's smart and spares me a lot of typing (relatively
  speaking)

There's also a small `brew` script that installs the stuff I like to use
without me having to remember it all.
