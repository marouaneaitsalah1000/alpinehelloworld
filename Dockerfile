# Étape 1 : Installer les dépendances système
RUN apk add --no-cache --update python3 py3-pip bash

# Étape 2 : Créer un environnement virtuel
RUN python3 -m venv /env

# Étape 3 : Activer l'environnement virtuel et installer les dépendances
RUN /env/bin/pip install --no-cache-dir -q -r /tmp/requirements.txt
