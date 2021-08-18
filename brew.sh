#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed -with-defa-ult-names
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
# brew install wget --with-iri

# Install more recent versions of some macOS tools.
# brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries.
# brew install ack
#brew install exiv2
brew install httpie
brew install git
brew install git-lfs
brew install gs
# brew install imagemagick --with-webp
# brew install lua
brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install tmux
# brew install vbindiff
# brew install zopfli
brew install ykman # yubikey cli
brew install gh # github cli

# cli improvements
# https://remysharp.com/2018/08/23/cli-improved
brew install bat # clone of cat(1) with syntax highlighting and Git integration
brew install prettyping # colorize and simplify ping's output
brew install fzf # cli fuzzy finder
brew install htop # improved top
brew install ncdu # disk usage
brew install tldr # simplified and community-driven man pages
brew install jq # lightweight and flexible command-line JSON processor
brew install entr # run arbitrary commands when files change
brew install kubectx # switch kubectl contexts/namespaces easily
brew install m-cli # mac cli for basically everything
brew install watch

# casks
brew install --cask alfred
brew install --cask rectangle
brew install --cask lens
brew install --cask docker
brew install --cask fork
brew install --cask firefox
brew install --cask microsoft-edge
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask keepingyouawake
brew install --cask karabiner-elements
brew install --cask quicklook-csv
brew install --cask quicklook-json
brew install --cask transmission
brew install --cask sublime-text
brew install --cask whatsapp
brew install --cask signal
brew install --cask slack
brew install --cask imageoptim
brew install --cask charles
brew install --cask atext
brew install --cask grandperspective
brew install --cask dropbox
brew install --cask brave-browser
brew install --cask visual-studio-code
brew install --cask spotify

# fonts
brew tap homebrew/cask-fonts
brew install font-ibm-plex --cask
brew install font-fira-code --cask

# Remove outdated versions from the cellar.
brew cleanup