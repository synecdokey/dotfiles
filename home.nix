{ pkgs, ... }: {
  nixpkgs.config.allowUnfreePredicate = (pkg: true);
  home = {
    stateVersion = "23.11";
    username = "emiliazapata";
    homeDirectory = "/Users/emiliazapata";
    packages = with pkgs; [
      fd
      fnm
      gh
      git
      git-lfs
      jq
      kitty
      neovim
      nodePackages.pnpm
      raycast
      ripgrep
      starship
      stylua
    ];
    file.".config" = { source = ./config; recursive = true; };
  };

  xdg.enable = true;

  programs.home-manager.enable = true;
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
set -Ux CARGO_HOME ~/.cache/cargo/
set -Ux PNPM_HOME ~/.cache/pnpm/
set -U fish_greeting

fish_add_path $PNPM_HOME
fish_add_path $CARGO_HOME/bin/

set -xg XDG_CONFIG_HOME ~/.config
set -xg VISUAL nvim

# Makes C^z go back to the background task (vim 99% of the time)
bind \cz 'fg'

fnm env --use-on-cd | source
starship init fish | source
    '';
  };
}
