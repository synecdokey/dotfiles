if not set -q fish_initial
  set -U PNPM_HOME ~/.cache/pnpm/
  set -U CARGO_HOME ~/.cache/cargo
  set -U fish_user_paths $fish_user_paths /opt/homebrew/bin/ $PNPM_HOME $CARGO_HOME/bin/
  set -U SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh
  set -U fish_initial
end

set -xg XDG_CONFIG_HOME ~/.config
set -xg VISUAL nvim

# Makes C^z go back to the background task (vim 99% of the time)
bind \cz 'fg'

fnm env | source
starship init fish | source
