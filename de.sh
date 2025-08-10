echo "Installing hyprland..."
# 3: DE components
sudo pacman -S --needed  greetd-tuigreet waybar hyprland hypridle hyprland-qt-support hyprland-qtutils hyprlang hyprlock hyprpicker hyprshot hyprutils cliphist xdg-desktop-portal-hyprland wofi dunst thunar alacritty

echo "Installing fonts..."
# 4: fonts!!
sudo pacman -S --needed noto-fonts noto-fonts-extra noto-fonts-emoji noto-fonts-cjk

echo "Installing theming components"
# 5: theming
sudo pacman -S --needed qt6ct nwg-look

echo "Installing apps..."
# 6: some apps I want
sudo pacman -S --needed steam discord firefox

echo "Moving dotfiles..."
rm -rf ~/.config/Thunar
rm -rf ~/.config/alacritty
rm -rf ~/.config/fastfetch
rm -rf ~/.config/hypr
rm -rf ~/.config/nvim
rm -rf ~/.config/omp
rm -rf ~/.config/waybar
mv ./dotfiles/* ~/.config/
