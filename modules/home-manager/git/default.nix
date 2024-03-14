{pkgs, ...}: {
  home.packages = with pkgs; [
    gh
    git
    git-lfs
  ];
  xdg.configFile.git = {
    source = ./config;
    recursive = true;
  };
}
