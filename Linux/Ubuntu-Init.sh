echo "请输入对应数字后回车: "
echo "1. 安装必要软件"
echo "2. 安装配置 zsh"
echo "3. 安装 x-ui 面板"
echo "4. 安装 Wireguard"
echo "5. 安装 frp"
echo "6. 安装 syncthing"
echo "7. 安装 EFB WeChat "

read choice

if [ "$choice" == "1" ]; then
    echo "安装 wget curl git screen ....."
    sudo apt update;
    sudo apt install wget curl git
elif [ "$choice" == "2" ]; then
    echo "安装 zsh"
    sudo apt install zsh;
    echo "安装 ohmyzsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
    echo "安装 zsh-syntax-highlighting 高亮"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
    echo "请编辑 ~/.zshrc 文件, plugins=( [plugins...] zsh-syntax-highlighting)"
elif [ "$choice" == "3" ]; then
    bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh);
    echo "X-ui 面板安装完成"
elif [ "$choice" == "4" ]; then
    wget -O wireguard.sh https://get.vpnsetup.net/wg;
    sudo bash wireguard.sh --auto;
    echo "Wireguard 安装完成, 客户端请扫码添加"
elif [ "$choice" == "5" ]; then
    wget https://github.com/fatedier/frp/releases/download/v0.50.0/frp_0.50.0_linux_amd64.tar.gz;
    tar -xvf frp_0.50.0_linux_amd64.tar.gz;
    mv frp_0.50.0_linux_amd64 frp;
    rm frp_0.50.0_linux_amd64.tar.gz;
    echo "Frp 已安装完成, 请配置frp"
elif [ "$choice" == "6" ]; then
    sudo apt install syncthing;
    echo "请编辑 ~/.config/syncthing/config.xml 文件"
elif [ "$choice" == "7" ]; then
    echo "安装依赖"
    sudo apt update;
    sudo apt install ffmpeg python3-pip python3-dev python3-setuptools libtiff5-dev libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev libmagic-dev -y;
    pip3 install ehforwarderbot;
    pip3 install efb-telegram-master;
    pip3 install git+https://github.com/ehForwarderBot/efb-wechat-slave;
    echo "请配置 Syncthing 同步数据文件, 如果已配置: "
    echo "请使用 ehforwarderbot -p WeChatUosPath 命令"
else
    echo "无效的选择"
fi
