#!/usr/bin/env bash

# Description : This scripts will install docker, docker-compose and setup the env
# Date 	      : 15/Jul/2021
# Contact     : Vikas Pandey (vikiscripts@gmail.com)

# Update and Upgrade the ubuntu VM
sudo apt-get update && sudo apt-get upgrade -y

# Install docker
sudo apt-get install docker.io -y

# Install dns resolver and add DNS entries
sudo apt install resolvconf -y
echo "nameserver 8.8.4.4" >> /etc/resolvconf/resolv.conf.d/head
echo "nameserver 8.8.8.8" >> /etc/resolvconf/resolv.conf.d/head

# Install docker-compose
