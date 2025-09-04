{pkgs, ...}: {
  imports = [./direnv ./fish ./git ./nvim];
  home.packages = with pkgs; [
    claude-code
    erlang
    fd
    fzf
    gleam
    jujutsu
    jq
    nodejs
    nodePackages.pnpm
    raycast
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
