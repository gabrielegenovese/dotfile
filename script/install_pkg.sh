# install yay
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd .. && rm -rf yay

PCMPKG="firefox sway swaylock waybar htop gtop dust vim neovim fastfetch zsh zsh-autosuggestions zsh-syntax-highlighting mako wofi foot grim swappy curl tmux thunderbird docker docker-compose telegram-desktop go rust elixir nodejs pnpm pacman-contrib nautilus tldr"
YAYPKG="wlogout vscodium-bin vscodium-bin-marketplace spotify gleam"

# install packages
sudo pacman -S $PCMPKG
yay -S $YAYPKG

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# needed for visimp
npm install -g tree-sitter-cli

# install visimp
git clone --depth=1 https://github.com/lucat1/visimp.git \
  "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paks/start/visimp

