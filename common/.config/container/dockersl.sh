#!/bin/bash

sudo groupadd docker && sudo gpasswd -a swaroop docker
sudo systemctl enable --now docker.service
