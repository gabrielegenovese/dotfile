cd ~/.config
cp -r nvim mako wlogout waybar foot sway swaylock wofi ~/Desktop/github/dotfile
cd
cp -r script .zshrc ~/Desktop/github/dotfile
cd ~/Desktop/github/dotfile
git add .
git commit -m "update"
git push
cd
