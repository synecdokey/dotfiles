if not set -q fish_initial
  set -U fish_user_paths $fish_user_paths (yarn global bin) ~/.cargo/bin/
  set -U SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh
  set -U fish_initial
end

set -xg XDG_CONFIG_HOME ~/.config
set -xg VISUAL nvim
set -xg FZF_DEFAULT_COMMAND 'rg --files --hidden --glob "!.git/"'

# Makes C^z go back to the background task (vim 99% of the time)
bind \cz 'fg'
