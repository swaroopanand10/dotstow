#!/bin/bash
## a script to setup docker sudoless

sudo groupadd docker && sudo gpasswd -a swaroop docker
# newgrp docker
sudo systemctl enable --now docker.service
