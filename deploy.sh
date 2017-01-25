#!/bin/bash
  tail -n +3 "$0" | ssh root@; exit

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

#copie du fichier index.html
  cp index.html Webcloud
  
