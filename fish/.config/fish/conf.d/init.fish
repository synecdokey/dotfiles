if not set -q fish_initial
  set -U fish_user_paths $fish_user_paths ~/.yarn/bin/
  set -U fish_initial
end
set -xg XDG_CONFIG_HOME ~/.config
set -xg VISUAL nvim
