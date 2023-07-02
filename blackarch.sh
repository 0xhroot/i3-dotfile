curl -O https://blackarch.org/strap.sh
echo 5ea40d49ecd14c2e024deecf90605426db97ea0c strap.sh | sha1sum -c
chmod +x strap.sh
sudo ./strap.sh
sudo pacman -S archlinux-keyring
sudo pacman -Syu
read -p "Do you want to reboot? (y/n): " answer
answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')

if [[ "$answer" == "yes" || "$answer" == "y" ]]; then
    sudo reboot
elif [[ "$answer" == "no" || "$answer" == "n" ]]; then
    echo "ERROR: Please reboot your system manually."
else
    echo "Invalid input. Only 'yes' or 'no' are allowed."
fi
