{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set -Ux CARGO_HOME ~/.cache/cargo/
      set -Ux PNPM_HOME ~/.cache/pnpm/
      set -U fish_greeting

      fish_add_path $PNPM_HOME
      fish_add_path $CARGO_HOME/bin/

      set -xg XDG_CONFIG_HOME ~/.config
      set -xg VISUAL nvim

      # Makes C^z go back to the background task (vim 99% of the time)
      bind \cz 'fg'

      starship init fish | source
      zoxide init fish | source
    '';
    shellAbbrs = {
      vi = "nvim";
      vim = "nvim";
    };
  };
}
