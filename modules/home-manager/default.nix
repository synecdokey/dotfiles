{pkgs, ...}: {
  imports = [./direnv ./fish ./git ./nvim];
  home.packages = with pkgs; [
    erlang
    fd
    gleam
    jq
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
