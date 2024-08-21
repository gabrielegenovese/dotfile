# install yay
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

PCMPKG="firefox sway swaylock waybar htop gtop dust vim neovim fastfetch zsh zsh-autosuggestions zsh-syntax-highlighting mako wofi foot grim swappy curl"
YAYPKG="wlogout"

cd
sudo pacman -S $PCMPKG
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yay -S $YAYPKG

