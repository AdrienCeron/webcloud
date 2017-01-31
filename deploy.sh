#!/bin/bash
tail -n +3 "$0" | ssh root@46.101.171.5; exit

# Exclusion des erreurs
set -eu

# Mise à jour du serveur
apt-get update
apt-get upgrade

# Installation du serveur Web
apt-get install nginx -y

# Installation des outils git
apt-get install git -y

# On se place dans le répertoire /var/www/html/
cd /var/www/html/

# On importe le projet github
git clone https://github.com/AdrienCeron/webcloud.git

# On crée un répertoire /var/www/html/webcloud/
mkdir /var/www/html/webcloud

# Copie du fichier index.html dans le dossier webcloud
# cp index.html Webcloud /var/www/html/webcloud/
cp index.html /var/www/html/webcloud/

#On accorde les droits aux utilisateurs
cd webcloud

# bzg: pourquoi les permissions ci-dessous ?
chmod +rwx deploy.sh
chmod +rwx Index.html
