export AS_USER="sudo su vagrant -c"

apt-get update
apt-get install -y curl
apt-get install -y git-core

# need for latest vim for YCM/tmux
apt-get install -y python-software-properties
add-apt-repository -y ppa:pi-rho/dev
apt-get update

apt-get install -y vim
apt-get install powerline

# Install spf13-vim
$AS_USER "curl http://j.mp/spf13-vim3 -L -o - | sh"

# Install tmux
apt-get install -y tmux
gem install tmuxinator

# Install python pip
#apt-get install -y python-pip
## Install powerline
#$AS_USER "pip install --user git+git://github.com/Lokaltog/powerline"

# Copy some default settings
$AS_USER "cp -rf .zshrc ~/.zshrc"
$AS_USER "cp -rf .tmux.conf ~/.tmux.conf"
$AS_USER "cp -rf .vimrc.local ~/.vimrc.local"
$AS_USER "cp -rf .vimrc.bundles.local ~/.vimrc.bundles.local"

# Install cmake which is required to build YouCompleteMe
apt-get install -y cmake
apt-get install -y python-dev
export PATH="$PATH:/opt/mono/bin"
export LD_LIBRARY_PATH="/opt/mono/lib"
$AS_USER "(cd ~/.vim/bundle; git clone https://github.com/Valloric/YouCompleteMe.git; cd YouCompleteMe; ./install.sh --omnisharp-completer)"
$AS_USER "vim +BundleInstall! +BundleClean! +q"

# Install zsh
apt-get install -y zsh
# Set zsh as default shell
chsh vagrant -s $(which zsh)
# Install oh-my-zsh
$AS_USER "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"

