source "$__fish_config_dir/variables.fish"

# automatically loads plugins under "$fisher_path"
source "$__fish_config_dir/functions/fisher_path.fish"

# Install fisher, if not exist
if status is-interactive && ! functions --query fisher
  curl -sL https://git.io/fisher | source && fisher update
end

if status is-interactive
  # Commands to run in interactive sessions can go here
  function fish_greeting
    echo ~~~  Hello (date +%A)!  ~~~
  end
end

set -Ux EDITOR nvim
