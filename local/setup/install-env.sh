#!/bin/sh

sudo apt update
sudo apt install -y nginx
sudo cp /vagrant/default /etc/nginx/sites-enabled/default
sudo nginx -s reload
