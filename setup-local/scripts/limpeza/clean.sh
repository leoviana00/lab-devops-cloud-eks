!/bin/bash

#Script Automatizado para atualização e limpeza.
#INICIO
clear
echo "Usando o comando apt update e full-upgrade para atualização";sleep 2
sudo apt-get update -y
sudo apt full-upgrade -y
echo "Update e Upgrade concluído!";sleep 2

echo "Iniciando a Limpeza do Sistema com os comandos apt:";sleep 2
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean
sudo apt purge; 
sudo apt remove;
echo "Limpeza concluída";sleep 2
#FIM

echo "Iniciando a Limpeza de logs do sistema:";sleep 2
cd /var/log
#limpa arquivos compactados
rm *.gz
# cria lista de todos os arquivos de log que serao limpos
lista=`find -type f`
# executa a limpeza dos logs
for i in $lista
do
echo -n >$i &>/dev/null
echo Zerando arquivo $i...
done
truncate *.log --size 0
# Para configurar o sistema de forma que só armazene os últimos 30 dias de log
journalctl --vacuum-time=30d
# por tamanho: journalctl --vacuum-size=200M
# sudo du /var/* -hs
find -maxdepth 1 -ctime +7 -exec rm -Rf {} \;
# find -maxdepth 1 -ctime +7 -exec rm -Rf {} \;
echo Limpeza dos arquivos de log concluída!;sleep 2; exit;

# rm -rf /var/tmp/*
# sudo df -h

#Delete Lock Files
# sudo rm /var/lib/dpkg/lock
# sudo rm /var/lib/apt/lists/lock
# sudo rm /var/lib/dpkg/lock-frontend
# sudo rm /var/cache/apt/archives/lock
# sudo dpkg --configure -a