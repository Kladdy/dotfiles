DOTFILES_PATH="$HOME/projects/dotfiles"

ln -sf $DOTFILES_PATH/.gitignore $HOME/.gitignore
ln -sf $DOTFILES_PATH/.gitconfig $HOME/.gitconfig 
ln -sf $DOTFILES_PATH/.gitignore_global $HOME/.gitignore_global

ln -sf $DOTFILES_PATH/.zshrc $HOME/.zshrc
ln -sf $DOTFILES_PATH/.zsh_profile $HOME/.zsh_profile