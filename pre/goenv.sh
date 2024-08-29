#!/bin/bash

# 配置变量
GIT_NAME="your_name"
GIT_EMAIL="yout_email"
REPO_URLS=(
    "ssh://git_repo_url"
)
SSH_BACKUP_DIR="./ssh_backup"
GO_VERSION="go1.23.0"

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
sudo apt-get install -y git zsh wget curl unzip fzf python3 python3-pip nodejs npm ripgrep fd-find openssh-client openssh-server xclip

# 安装 docker-compose
sudo apt install -y docker.io 
DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*?(?=")')
sudo curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# 配置 Git 信息
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"

# 安装 Oh My Zsh
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 切换默认 Shell 为 Zsh
chsh -s $(which zsh)

# 安装 zsh-syntax-highlighting 和 zsh-autosuggestions 插件
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 添加插件到 .zshrc
sed -i 's/^plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions z sudo docker)/' ~/.zshrc

# 下载并安装 Go 语言
GO_TARFILE="${GO_VERSION}.linux-amd64.tar.gz"
wget "https://go.dev/dl/${GO_TARFILE}"
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf ${GO_TARFILE}
sudo rm ${GO_TARFILE}

# 安装新版新nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim && sudo tar -C /opt -xzf nvim-linux64.tar.gz

# 安装nerd font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraMono/Medium/FiraMonoNerdFont-Medium.otf
fc-cache -rv

# 配置 Path环境变量
echo "export PATH=\$PATH:/usr/local/go/bin:\$HOME/go/bin:/opt/nvim-linux64/bin" >> ~/.zshrc
# 配置 GOPATH
echo "export GOPATH=\$HOME/go:$HOME/workSpace:$HOME/workSpace/src/go-package" >> ~/.zshrc

# 重新加载 .zshrc
source ~/.zshrc

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
    echo "Warning: SSH key backup directory '$SSH_BACKUP_DIR' does not exist. Skipping SSH key restoration."
    exit 1
fi

#验证是否能登录git
#ssh -T git@${git_host}

# 克隆代码仓库
dir=$HOME/workSpace/src
mkdir -p $dir/sunteng && cd $dir
for repo_url in "${REPO_URLS[@]}"
do
    git clone $repo_url
done

#移动common库到sunteng目录下
mv $dir/commons $dir/sunteng

echo "Setup completed! Please restart your terminal or source ~/.zshrc to apply changes."
