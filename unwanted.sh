#!/bin/bash

# List unwanted software and packages on Artix Linux

# Define the list of unwanted software/packages
unwanted_packages=(
    "package1"
    "package2"
    "package3"
    # Add more packages/software to the list as needed
)

# Output a header
echo "Unwanted Software/Package List:"
echo "-------------------------------"

# Iterate over the unwanted_packages array
for package in "${unwanted_packages[@]}"; do
    # Check if the package is installed
    if pacman -Qi "$package" &> /dev/null; then
        # If the package is installed, print its name
        echo "$package"
    fi
done

# Output a footer
echo "-------------------------------"
echo "End of Unwanted Software/Package List"

1. pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
2. pacman-key --lsign-key FBA220DFC880C036
3. pacman -U 'https://cdn-mirror.chaotic.cx/chaotic... 'https://cdn-mirror.chaotic.cx/chaotic...

