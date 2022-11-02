cd /home/geno/.config
cp -r mako waybar foot nvim sway swaylock wofi ../Desktop/dotfile
cd /home/geno/
cp -r script .zshrc ./Desktop/dotfile
cd /home/geno/Desktop/dotfile
git add .
git commit -m "update"
git push
cd
