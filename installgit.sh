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

#All the examples will be hosted in the <em>src</em> directory in your $HOME path 
[-d ~/src] || mkdir ~src
#; then echo "Your directory structure already contains a $HOME/src directory. Omitting its creation!";else mkdir ~/src;fi
cd ~/src
echo "\n\n\nYou can now use the following command to clone the DEVOPS repo:\n\ngit clone https://github.com/aguilarsmbccr/devops.git"


