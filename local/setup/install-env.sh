#!/bin/sh

sudo apt update
<<<<<<< HEAD
sudo apt install -y nginx
sudo cp /vagrant/default.txt /etc/nginx/sites-enabled/default
sudo nginx -s reload
=======
sudo apt install -y nginx 
sudo cp /vagrant/default /etc/nginx/sites-enabled/default
sudo nginx -s reload

>>>>>>> d491dd2e1e9ccf554d749d6da186e21e6bb7b563
