curl "https://raw.githubusercontent.com/mavifindsbugs/zsh-config/master/.zshrc" > .zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

if [ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]
then
    echo "zsh-autosuggestions already installed, skipping ..."
else
    git clone "https://github.com/zsh-users/zsh-autosuggestions" ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

zsh