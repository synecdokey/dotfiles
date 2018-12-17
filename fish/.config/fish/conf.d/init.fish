if not set -q fish_initial
  set -U fish_user_paths $fish_user_paths ~/.yarn/bin/
  set -U SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh
  set -U fish_initial
end
set -xg XDG_CONFIG_HOME ~/.config
set -xg VISUAL nvim
