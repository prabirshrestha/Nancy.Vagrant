
apt-get update
apt-get install -y curl
apt-get install -y vim
apt-get install -y git-core

export AS_USER="sudo su vagrant -c"

# Install spf13-vim
$AS_USER "curl http://j.mp/spf13-vim3 -L -o - | sh"


