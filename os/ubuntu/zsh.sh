# install zsh
sudo apt install zsh curl
chsh -s /usr/bin/zsh
zsh
2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
echo 'export TERM=xterm-256color' >> ~/.zshrc
echo 'ZSH_THEME=powerlevel10k/powerlevel10k' >> ~/.zshrc
