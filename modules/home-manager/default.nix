{pkgs, ...}: {
  imports = [./direnv ./fish ./git ./nvim];
  home.packages = with pkgs; [
    erlang
    fd
    fzf
    gleam
    jq
    nodejs
    nodePackages.pnpm
    raycast
    ripgrep
    rustup
    starship
    stylua
    wezterm
    yabai
    zoxide
  ];
}
