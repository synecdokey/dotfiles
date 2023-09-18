{ pkgs, ... }: {
  home = {
    stateVersion = "23.11";
    username = "emiliazapata";
    homeDirectory = "/Users/emiliazapata";
    packages = [
      pkgs.git
      pkgs.neovim
    ];
    file.".config" = { source = ./config; recursive = true; };
  };

  xdg.enable = true;

  programs.home-manager.enable = true;
  programs.fish.enable = true;
}
