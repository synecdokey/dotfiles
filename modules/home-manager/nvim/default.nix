{pkgs, ...}: {
  xdg.configFile.nvim = {
    source = ./config;
    recursive = true;
  };

  programs.neovim = {
    enable = true;
    withPython3 = false;
    withRuby = false;
    withNodeJs = false;
    package = pkgs.neovim-nightly;
    extraPackages = with pkgs; [
      alejandra
      nil
      nodePackages."@tailwindcss/language-server"
      nodePackages."@astrojs/language-server"
      vscode-langservers-extracted
    ];
  };
}
