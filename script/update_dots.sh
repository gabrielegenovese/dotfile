cd ~/.config
cp -r mako wlogout waybar foot nvim sway swaylock wofi ~/Desktop/github-proj/dotfile
cd
cp -r script .zshrc ~/Desktop/github-proj/dotfile
cd ~/Desktop/github-proj/dotfile
git add .
git commit -m "update"
git push
cd
