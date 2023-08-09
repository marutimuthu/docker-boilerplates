## Update Ubuntu
sudo apt update && apt upgrade -y
sudo apt-get install ca-certificates curl gnupg -y

sudo install -m 0755 -d /etc/apt/keyrings -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

# Install Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Allow user access
#sudo chmod 666 /var/run/docker.sock

# List the available versions:
# apt-cache madison docker-ce | awk '{ print $3 }'
# $ 5:24.0.0-1~ubuntu.22.04~jammy
# $ 5:23.0.6-1~ubuntu.22.04~jammy
# $ <...>
# VERSION_STRING=5:24.0.0-1~ubuntu.22.04~jammy
# sudo apt-get install docker-ce=$VERSION_STRING docker-ce-cli=$VERSION_STRING containerd.io docker-buildx-plugin docker-compose-plugin
