# Make sure we’re using the latest Homebrew

update

# Upgrade any already-installed formulae

upgrade

# Brew Installs

install git
install node
install rbenv
install redis
install mysql
install ffmpeg
install graphicsmagick

# Set up Brew Cask

tap phinze/homebrew-cask
install brew-cask
tap caskroom/versions

# Brew Cask Install Apps


# Apps
apps=(
alfred
dropbox
skype
slack
firefox
google-chrome
opera-next
transmit
vagrant
flash
sublime-text3
virtualbox
mailbox
sketch
vlc
cloudapp
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
cask install --appdir="/Applications" ${apps[@]}

# Configure Alfred to recognize apps managed by homebrew-cask.

cask alfred link

tap homebrew/versions

# Remove outdated versions from the cellar

cleanup
