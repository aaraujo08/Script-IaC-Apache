#!/bin/bash


echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -s

echo "Instalando o servidor Apache..."

apt-get install apache2 -s

echo "Instalando o programa para descompactar arquivos..."

apt-get install unzip -s

echo "Baixando e copiando os arquivos da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/


echo " Fim..."




