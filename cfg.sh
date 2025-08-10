# this script gets you up and running with a fairly minimal hyprland install

# 1: run a system update
sudo pacman -Syu

# 2: install core utilities
sudo pacman -S amd-ucode networkmanager neovim base-devel git man-db man-pages jdk-openjdk-21 iw mesa vulkan-radeon pavucontrol unzip

# 3: DE components
sudo pacman -S greetd-tuigreet waybar hyprland hypridle hyprland-qt-support hyprland-qtutils hyprlang hyprlock hyprpicker hyprshot hyprutils cliphist xdg-desktop-portal-hyprland wofi dunst thunar

# 4: fonts!!
sudo pacman -S noto-fonts noto-fonts-extra noto-fonts-emoji noto-foncts-cjk

# 5: theming
sudo pacman -S adwaita-qt5-git adwaita-qt6-git qt6ct nwg-look

# 6: some apps I want
sudo pacman -S steam discord firefox

# 7: set up an AUR helper
cd ~
mkdir ./src
cd ./src
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
