{ pkgs, config, ... }: {
  home.packages = with pkgs; [
    neovim
    nodePackages."@tailwindcss/language-server"
    nodePackages."@astrojs/language-server"
    vscode-langservers-extracted
  ];
  xdg.configFile.nvim = {
    source = ./config;
    recursive = true;
  };
}
