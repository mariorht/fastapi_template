#!/bin/bash

# Set PYTHONPATH to include the src directory
export PYTHONPATH=$(pwd)/src

# Activate the virtual environment if it exists
if [ -d "venv" ]; then
    source venv/bin/activate
fi

# Run the tests
echo "Running tests..."
python3 -m pytest tests

# Deactivate the virtual environment after running the tests
if [ -d "venv" ]; then
    deactivate
fi
