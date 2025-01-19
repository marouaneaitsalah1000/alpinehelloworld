# Utiliser l'image de base Alpine
FROM alpine:latest

# Installer python3, pip et bash
RUN apk add --no-cache --update python3 py3-pip bash

# Créer et activer un environnement virtuel
RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

# Copier les fichiers nécessaires
ADD ./webapp/requirements.txt /tmp/requirements.txt

# Installer les dépendances dans l'environnement virtuel
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Copier le reste de votre code (si nécessaire)
# ADD ./webapp /app

# Définir le point d'entrée du conteneur
# CMD ["python3", "/app/your_app.py"]
