if status is-interactive
    # Commands to run in interactive sessions can go here
end


source $HOME/.config/fish/conf.d/abbr.fish

starship init fish | source
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andreymetelsky/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/andreymetelsky/Downloads/google-cloud-sdk/path.fish.inc'; end

set -x PATH $HOME/.rbenv/bin $PATH
rbenv init - | source