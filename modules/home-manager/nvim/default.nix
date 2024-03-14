{pkgs, ...}: {
  home.packages = with pkgs; [
    alejandra
    neovim
    nil
    nodePackages."@tailwindcss/language-server"
    nodePackages."@astrojs/language-server"
    vscode-langservers-extracted
  ];

  xdg.configFile.nvim = {
    source = ./config;
    recursive = true;
  };
}
