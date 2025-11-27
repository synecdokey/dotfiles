{pkgs, ...}: {
  imports = [./direnv ./fish ./git ./nvim ./jujutsu];
  home.packages = with pkgs; [
    claude-code
    erlang
    fd
    fzf
    gleam
    jq
    nodejs
    nodePackages.pnpm
    ripgrep
    rustup
    starship
    stylua
    typescript-go
    typst
    wezterm
    yabai
    zoxide
  ];
}
