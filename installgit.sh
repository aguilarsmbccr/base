apt-get upgrade -y
apt-get update
apt-get install -y git
apt-get install -y ufw
apt-get install -y openssh-server
ufw allow 22
ufw enable
