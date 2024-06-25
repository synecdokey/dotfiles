{
  pkgs,
  inputs,
  ...
}: {
  xdg.configFile.nvim = {
    source = ./config;
    recursive = true;
  };

  programs.neovim = {
    enable = true;
    withPython3 = false;
    withRuby = false;
    withNodeJs = false;
    package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.default;
    extraPackages = with pkgs; [
      alejandra
      nil
      nodePackages."@tailwindcss/language-server"
      nodePackages."@astrojs/language-server"
      vscode-langservers-extracted
    ];
  };
}
