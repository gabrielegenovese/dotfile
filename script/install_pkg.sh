# install yay
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd .. && rm -rf yay

PCMPKG="firefox sway swaylock waybar htop gtop dust vim neovim fastfetch zsh zsh-autosuggestions zsh-syntax-highlighting mako wofi foot grim swappy curl tmux thunderbird docker docker-compose telegram-desktop go rust elixir nodejs pnpm pacman-contrib nautilus tldr imv vlc xournalpp android-file-transfer"
YAYPKG="wlogout vscodium-bin vscodium-bin-marketplace spotify gleam"

# install packages
sudo pacman -S $PCMPKG
yay -S $YAYPKG

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Finished"
