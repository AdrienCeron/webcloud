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


  
