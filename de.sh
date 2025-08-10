#!/bin/bash
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

mv ~/src/archqs/.bashrc ~/.bashrc

cd ~/Downloads
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
source ~/.bashrc
brew install jandedobbeleer/oh-my-posh/oh-my-posh
oh-my-posh font install FiraCode

sudo rm -f /etc/greetd/config.toml

sudo touch /etc/greetd/config.toml
sudo echo "[terminal]
# The VT to run the greeter on. Can be \"next\", \"current\" or a number
# designating the VT.
vt = 1

# The default session, also known as the greeter.
[default_session]

# \`agreety\` is the bundled agetty/login-lookalike. You can replace \`/bin/sh\`
# with whatever you want started, such as \`sway\`.
command = \"tuigreet --cmd hyprland\"

# The user to run the command as. The privileges this user must have depends
# on the greeter. A graphical greeter may for example require the user to be
# in the \`video\` group.
user = \"greeter\"" > /etc/greetd/config.toml
