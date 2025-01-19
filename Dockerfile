# Utiliser une image de base avec Alpine et Python
FROM alpine:latest

# Installer les dépendances nécessaires
RUN apk add --no-cache --update python3 py3-pip bash

# Créer un environnement virtuel
RUN python3 -m venv /env

# Activer l'environnement virtuel et installer les dépendances depuis requirements.txt
ADD ./webapp/requirements.txt /tmp/requirements.txt
RUN /env/bin/pip install --no-cache-dir -q -r /tmp/requirements.txt

# Ajouter votre code dans le conteneur
ADD ./webapp /app

# Spécifier le répertoire de travail
WORKDIR /app

# Commande pour démarrer votre application (à ajuster selon vos besoins)
CMD ["/env/bin/python", "app.py"]
