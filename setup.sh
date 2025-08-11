#!/bin/bash
sudo pacman -Syu

chmod +x ./*.sh

echo "Installing system components..."
./scripts/system.sh
echo "Installing DE..."
./scripts/de.sh

read -p "Do you want to install paru? (y/n): " user_input

# Convert input to lowercase for case-insensitive comparison
user_input_lower=$(echo "$user_input" | tr '[:upper:]' '[:lower:]')

if [[ "$user_input_lower" == "y" ]]; then
  echo "Installing AUR helper..."
  ./scripts/helper.sh
fi

echo "Script finished!"