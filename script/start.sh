#!/bin/bash

# 配置变量
GIT_NAME="your_name"
GIT_EMAIL="yout_email"

# 检查当前用户是否具有sudo权限
if sudo -v > /dev/null 2>&1; then
    echo "User $(whoami) has sudo privileges."
else
    echo "User $(whoami) does not have sudo privileges."
    echo "please run the command: su - && /sbin/usermod -aG sudo $(user)"
    exit 1
fi

# 更新 APT 源为清华大学镜像源
cat <<EOF | sudo tee /etc/apt/sources.list
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ stable main contrib non-free
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ stable-updates main contrib non-free
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ stable-backports main contrib non-free
deb https://mirrors.tuna.tsinghua.edu.cn/debian-security stable-security main contrib non-free
EOF

# 更新包列表并安装基本软件
sudo apt-get update
sudo apt-get install -y gcc git zsh wget curl unzip python3 python3-pip nodejs npm ripgrep fd-find fzf openssh-client openssh-server tmux

# 安装 docker-compose
sudo apt install -y docker.io 
DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*?(?=")')
sudo curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# 配置 Git 信息
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"

# 安装ranger
pip3 install ranger-fm

# Zsh
cp -r ../zsh ~/.config
cp ../zsh/.zshrc ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z.git ~/.config/zsh/zsh-z
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.config/zsh/zsh-autocomplete
chsh -s $(which zsh)

# 安装新版新nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim && sudo tar -C /opt -xzf nvim-linux64.tar.gz

# 安装nerd font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraMono/Medium/FiraMonoNerdFont-Medium.otf
if command -v fc-cache >/dev/null 2>&1; then
    echo "fc-cache 命令存在"
else
    echo "fc-cache 命令不存在"
    sudo apt install -y fontconfig
fi
fc-cache -fv

# install wezterm
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo apt update
sudo apt install wezterm-nightly

mkdir -p ~/.config/wezterm
cp ../wezterm/wezterm.lua ~/.config/wezterm/

# install starship
curl -sS https://starship.rs/install.sh | sh
cp ../starship/starship.toml ~/.config/

# tmux
cp ../tmux/.tmux.conf ~/

# 恢复 SSH 公钥和私钥，并配置 ssh config 文件
if [ -d "$SSH_BACKUP_DIR" ]; then
    mkdir -p ~/.ssh
    cp $SSH_BACKUP_DIR/id_rsa ~/.ssh/id_rsa
    cp $SSH_BACKUP_DIR/id_rsa.pub ~/.ssh/id_rsa.pub
    cp $SSH_BACKUP_DIR/config ~/.ssh/config
    chmod 600 ~/.ssh/id_rsa
    chmod 644 ~/.ssh/id_rsa.pub
    chmod 644 ~/.ssh/config
else
    echo "Skipping SSH key restoration. Do you want to generate it?"
fi

echo "Setup completed! Please restart your terminal or source ~/.zshrc to apply changes."
