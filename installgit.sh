apt-get upgrade -y
apt-get update

#git se requiere para poder clonar los repositorios correspondientes
apt-get install -y git


#openssh-server es para el autor una buena herramienta para acceder de manera remota al servidor mediante una consola segura.
apt-get install -y openssh-server

#ufw (Uncomplicated Fire Wall es requerido para permitir acceso a las máquinas de desarrollador a través de los puertos según sea requerido: http, https, ssh, etc.)
apt-get install -y ufw
ufw allow 22
ufw --force enable
