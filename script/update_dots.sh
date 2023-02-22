cd ~/.config
cp -r mako waybar foot nvim sway swaylock wofi ~/Desktop/dotfile
cd
cp -r script .zshrc ~/Desktop/dotfile
cd ~/Desktop/dotfile
git add .
git commit -m "update"
git push
cd
