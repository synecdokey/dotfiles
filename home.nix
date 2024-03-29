{
  pkgs,
  config,
  inputs,
  ...
}: {
  nixpkgs.config.allowUnfreePredicate = pkg: true;
  nixpkgs.overlays = [inputs.neovim-nightly-overlay.overlay];
  home = {
    stateVersion = "23.11";
    username = "emiliazapata";
    homeDirectory = "/Users/emiliazapata";
    packages = with pkgs; [
      erlang
      fd
      fnm
      gleam
      jq
      nodePackages.pnpm
      raycast
      ripgrep
      rustup
      starship
      stylua
      wezterm
      yabai
    ];

    file.".config" = {
      source = ./config;
      recursive = true;
    };
    file.".zprofile" = {source = ./.zprofile;};
    file.".zshrc" = {source = ./.zshrc;};
  };

  xdg.enable = true;

  programs.home-manager.enable = true;
  programs.gpg = {
    enable = true;
    homedir = "${config.xdg.configHome}/gnupg";
  };
  imports = [./modules/home-manager];
}
