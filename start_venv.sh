#!/bin/bash

# Nombre del entorno virtual
VENV_DIR="venv"


# Activar el entorno virtual
echo "Activando entorno virtual..."
source $VENV_DIR/bin/activate


# Lanzar la aplicación
echo "Iniciando servidor en local..."
cd src
uvicorn app.main:app --reload --host 0.0.0.0 --port 8001

# Desactivar el entorno virtual al terminar
deactivate
