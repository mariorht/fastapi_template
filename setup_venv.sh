#!/bin/bash

# Nombre del entorno virtual
VENV_DIR="venv"

# Ruta al archivo de requisitos
REQUIREMENTS_FILE="src/requirements.txt"

# Verificar si Python está instalado
if ! command -v python3 &> /dev/null; then
    echo "Python3 no está instalado. Instálalo antes de continuar."
    exit 1
fi

# Crear el entorno virtual si no existe
if [ ! -d "$VENV_DIR" ]; then
    echo "Creando entorno virtual..."
    python3 -m venv $VENV_DIR
    echo "Entorno virtual creado en $VENV_DIR."
fi

# Activar el entorno virtual
echo "Activando entorno virtual..."
source $VENV_DIR/bin/activate

# Instalar dependencias
if [ -f "$REQUIREMENTS_FILE" ]; then
    echo "Instalando dependencias..."
    pip install --upgrade pip
    pip install -r $REQUIREMENTS_FILE
else
    echo "El archivo de requisitos ($REQUIREMENTS_FILE) no se encuentra."
    deactivate
    exit 1
fi

# Lanzar la aplicación
echo "Iniciando servidor en local..."
cd src
uvicorn app.main:app --reload --host 127.0.0.1 --port 8001

# Desactivar el entorno virtual al terminar
deactivate
