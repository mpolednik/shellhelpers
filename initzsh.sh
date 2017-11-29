# Get rid of old zshrc, otherwise we won't link.
mv ~/.zshrc ~/.zshrc.bak

ln -s ~/Projects/src/github.com/mpolednik/dotfiles/.zshrc ~/.zshrc

# requires ZSH though
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
