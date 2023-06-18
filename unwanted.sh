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
