
apt-get update
apt-get install -y curl
apt-get install -y vim
apt-get install -y git-core

export AS_USER="sudo su vagrant -c"

# Install spf13-vim
$AS_USER "curl http://j.mp/spf13-vim3 -L -o - | sh"

apt-get install -y zsh
chsh vagrant -s /bin/zsh
$AS_USER "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"

apt-get install -y tmux

apt-get install -y python-pip
$AS_USER "pip install --user git+git://github.com/Lokaltog/powerline"

$AS_USER "cp -rf .zshrc ~/.zshrc"

