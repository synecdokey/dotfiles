{pkgs, ...}: {
  imports = [./direnv ./fish ./git ./nvim];
  home.packages = with pkgs; [
    erlang
    fd
    fnm
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
  ];
}
