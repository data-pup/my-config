# Clone the powerline fonts repository.
git clone https://github.com/powerline/fonts.git --depth=1

# Move into the cloned repository and run the installation script.
cd fonts
./install.sh

# Clean up, remove the repository.
cd ..
rm -rf fonts

