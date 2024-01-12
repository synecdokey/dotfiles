{ pkgs, config, ... }: {
  nixpkgs.config.allowUnfreePredicate = (pkg: true);
  home = {
    stateVersion = "23.11";
    username = "emiliazapata";
    homeDirectory = "/Users/emiliazapata";
    packages = with pkgs; [
      fd
      fnm
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
    file.".config" = { source = ./config; recursive = true; };
    file.".zprofile" = { source = ./.zprofile; };
    file.".zshrc" = { source = ./.zshrc; };
  };

  xdg.enable = true;

  programs.home-manager.enable = true;
  programs.gpg = {
    enable = true;
    homedir = "${config.xdg.configHome}/gnupg";
  };
  imports = [ ./modules/home-manager ];
}
