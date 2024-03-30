#!/bin/sh

sudo apt update
sudo apt install -y nginx
sudo cp /vagrant/default.txt /etc/nginx/sites-enabled/default
sudo nginx -s reload