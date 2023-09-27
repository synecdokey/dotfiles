# Dot Files

Just a repertoire of the configuration I use on my machines.

## Usage

I'm using `nix` to manage my dotfiles now, so the command to run the first time
around is:

```sh
nix run github:nix-community/home-manager -- switch --flake .
```

After the first run, home-manager is available directly, and so you can do:

```sh
home-manager switch --flake .
```

If you want to know more, I did write about it
[here](https://dev.to/synecdokey/nix-on-macos-2oj3).

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
