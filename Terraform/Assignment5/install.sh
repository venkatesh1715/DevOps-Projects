#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
echo "WE ARE ENDING NOW" | sudo tee /var/www/html/index.html
