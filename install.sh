download() {
    echo "Downloading Nerd Fonts..."
    brew tap homebrew/cask-fonts
    brew install --cask font-bitstream-vera-sans-mono-nerd-font

    echo "Downloading starship..."
    brew install starship
    echo 'eval "$(starship init zsh)"' >> ~/.zshrc
}

main(){
    download
}

main
