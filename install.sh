download() {
    echo "Downloading Nerd Fonts..."
    brew tap homebrew/cask-fonts
    brew install --cask font-bitstream-vera-sans-mono-nerd-font

    echo "Downloading Fira Code..."
    brew tap homebrew/cask-fonts
    brew install --cask font-fira-code

    echo "Downloading starship..."
    brew install starship
    echo 'eval "$(starship init zsh)"' >> ~/.zshrc

    echo "Downloading kitty..."
    brew install --cask kitty
    brew install --cask hammerspoon
}

main(){
    download
}

main
