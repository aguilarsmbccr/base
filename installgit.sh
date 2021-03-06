apt-get upgrade -y
apt-get update

#git se requiere para poder clonar los repositorios correspondientes
apt-get install -y git

#net-tools se utiliza en este contexto con el fin de 
apt-get install -y net-tools

#openssh-server es para el autor una buena herramienta para acceder de manera remota al servidor mediante una consola segura.
apt-get install -y openssh-server

#ufw (Uncomplicated Fire Wall es requerido para permitir acceso a las máquinas de desarrollador a través de los puertos según sea requerido: http, https, ssh, etc.)
apt-get install -y ufw
ufw allow 22
ufw allow 80
ufw --force enable

#Here we will install Docker so that the machines are able to instantiate a Docker image easily

#(From official docker website: https://docs.docker.com/install/linux/docker-ce/ubuntu/ )
#Uninstall old versions
apt-get remove docker docker-engine docker.io containerd runc

#Setup the repository
apt-get update

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
#Install Docker CE
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io

#Add your own user to the docker group so that it can be run as a non-root user
groupadd docker
usermod -aG docker manuel
 

#All the examples will be hosted in the <em>src</em> directory in your $HOME path 
[ -d ~/src ] || mkdir ~/src
#; then echo "Your directory structure already contains a $HOME/src directory. Omitting its creation!";else mkdir ~/src;fi
cd ~/src
echo "\n\n\n\n\nPara poder comenzar a colaborar en este proyecto, vaya al directorio ~/src y ya estando ubicado ahí, haga uso del siguiente comando:\n\n\ngit clone https://github.com/aguilarsmbccr/devops.git\n\n\n"


