#!/bin/bash

REPO_URLS=(
    "ssh://git_repo_url"
)
GO_VERSION="go1.23.0"

# 下载并安装 Go 语言
GO_TARFILE="${GO_VERSION}.linux-amd64.tar.gz"
wget "https://go.dev/dl/${GO_TARFILE}"
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf ${GO_TARFILE}
sudo rm ${GO_TARFILE}


# 克隆代码仓库
dir=$HOME/workSpace/src
mkdir -p $dir/sunteng && cd $dir
for repo_url in "${REPO_URLS[@]}"
do
    git clone $repo_url
done

#移动common库到sunteng目录下
mv $dir/commons $dir/sunteng

echo "Go env finish, enjoy coding!"

