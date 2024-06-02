#bin/bash

# This script is intended to be run on a fresh Ubuntu installation to set up the user profile.
# It installs Zsh, Oh My Zsh, and other software, and copies the configuration files to the home directory.


deploy_zsh_ohmyzsh() {
    # Update package lists
    sudo apt-get update

    # Install Zsh
    sudo apt-get install -y zsh

    # Make Zsh the default shell
    chsh -s $(which zsh)

    # Install Oh My Zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_software() {
    # Update package lists
    sudo apt-get update

    # Install tmux
    sudo apt-get install -y tmux

    # Install neovim
    sudo apt-get install -y neovim

    # Add additional software installations here
    # For example, to install software_name, add the following line:
    # sudo apt-get install -y software_name
}

clone_and_copy_files() {
    # Clone the repository
    git clone https://github.com/meakommo/dot-files

    # Copy the files to the home directory
    cp dot-files/.tmux.conf ~/
    cp dot-files/.zshrc ~/
    cp dot-files/.vimrc ~/
}

symlink_vimrc_to_nvim() {
    # Create the nvim config directory if it doesn't exist
    mkdir -p ~/.config/nvim

    # Create the symbolic link
    ln -s ~/.vimrc ~/.config/nvim/init.vim
}

deploy_zsh_ohmyzsh
install_software
clone_and_copy_files
symlink_vimrc_to_nvim
