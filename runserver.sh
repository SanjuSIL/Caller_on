#!/bin/bash
# Set PORT to 80 by default if not provided in the environment
PORT=${PORT:-80}
echo "Running Django server on port $PORT"
# Using sudo because port 80 is a privileged port
sudo python3 manage.py runserver 0.0.0.0:$PORT
