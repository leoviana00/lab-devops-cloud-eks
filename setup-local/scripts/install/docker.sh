#!/bin/bash

echo "[TASK 01] - INSTALAÇÃO DOCKER"
#Atualização do Sistema
sudo apt update
#Pacotes de pré-requisitos que permitem usar pacotes via HTTPS
sudo apt install apt-transport-https ca-certificates curl software-properties-common
#Obtendo o pacote Docker mais recente
curl -fsSL https://get.docker.com | bash >/dev/null 2>&1
#Adicionar usuário ao grupo Docker
sudo usermod -aG docker ${USER}
# sudo chmod 777 /var/run/docker.sock 
# INSEGURO
# -----------------------------------------------------------------------------------------------#
# Segurança                                                                                      #
# Verifique se o arquivo de soquete do Docker tem permissões 660 ou mais restritivas, executando:#
# stat -c %a /var/run/docker.sock
# Caso esteja abaixo, corrigir com o comando abaixo:
# chmod 660 /var/run/docker.sock

#Verificando a instalação
docker --version
#Checando Status do serviço
systemctl restart docker
systemctl status docker


echo "[TASK 02] - INSTALAÇÃO DOCKER COMPOSE"
#Baixe o binário Docker Compose mais recente
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose >/dev/null 2>&1
#Definir permissões de execução
sudo chmod +x /usr/local/bin/docker-compose
#Verifique a instalação
docker-compose --version
#Habilitar conclusão de linha de comando
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.29.2/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose >/dev/null 2>&1

echo "[TASK 03] - INSTALAÇÃO PIP3"
#Atualização do Sistema
sudo apt-get update >/dev/null 2>&1
#Instalação do PIP3
sudo apt-get -y install python3-pip >/dev/null 2>&1
#Verifique a instalação
sudo pip3 --version