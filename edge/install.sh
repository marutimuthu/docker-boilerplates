## Clone Repo 
# cd ~
git clone https://github.com/marutimuthu/docker-boilerplates

# Start containers
cd ~/docker-boilerplates/edge
CURRENT_UID=$(id -u):$(id -g) docker compose up

sudo chgrp -R docker volumes/
sudo chown -R edgestack *

# Copy configs

# mkdir ~/docker-boilerplates/edge/volumes/nodered/data
# cp ~/docker-boilerplates/edge/nodered/settings.js ~/docker-boilerplates/edge/volumes/nodered/data

# Restart all containers
CURRENT_UID=$(id -u):$(id -g) docker compose restart 