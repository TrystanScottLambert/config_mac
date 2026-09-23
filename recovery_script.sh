# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# follow copy paste commands at the end

# install git
brew install git

# Terminal
## install wezterm
brew install --cask wezterm

## install nerdfonts
brew install font-meslo-lg-nerd-font

## install fish
brew install fish

## install starship prompt
curl -sS https://starship.rs/install.sh | sh
mkdir -p ~/.config && touch ~/.config/starship.toml
starship init fish | source # add to fish

Programming languages
## Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
set -Ua fish_user_paths $HOME/.cargo/bin # add to fish
rustup component add rust-analyzer

## Python
curl -LsSf https://astral.sh/uv/install.sh | sh
uv python install 3.14 # or whatever is latest
uv tool install basedpyright

## R
# You have to insatll this from the website what a sham:
# https://cran.r-project.org/bin/macosx/
R -e 'install.packages("languageserver", repos="https://cloud.r-project.org")'

# Tex to work with neovim
brew install --cask mactex-no-gui

# Useful tools
cargo install fd-find
cargo install bat
cargo install ripgrep
cargo install dog-tsl
brew install lazygit
brew install fzf
brew install imagemagick
sudo -v curl https://rclone.org/install.sh | sudo bash # rclone

# neovim
brew install node
brew install neovim
git clone https://github.com/LazyVim/starter ~/.config/nvim # starter
rm -rf ~/.config/nvim/.git
alias --save vim nvi
alias --save vi vim
