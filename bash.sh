#!/bin/bash

# Update the package list and install development tools
sudo yum update -y
sudo yum groupinstall "Development Tools" -y

# Create a directory to store the installed package information
mkdir build_essential_installation

# Create a list of installed packages and store it in a text file
rpm -qa > build_essential_installation/installed_packages.txt

# Archive the installation information in .tar.gz format
tar -czvf build_essential_installation.tgz build_essential_installation

# Clean up the temporary directory
rm -r build_essential_installation

echo "Installation and archiving complete."
