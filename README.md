# Setup Sveltkit Project
## Setup Auto Updates
```
sudo apt install unattended-upgrades
to view logs:
cat /var/log/unattended-upgrades/unattended-upgrades.log
```
## Install nvm
```
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
bash
nvm install-latest-npm
nvm install v26
npm i pm2 -g
```
## Install git
```
sudo apt update
sudo apt install git
```
## Create User
```
sudo adduser [username
suod usermod -aG [username]
```
## Setup Server Script
```
wget -qO- https://raw.githubusercontent.com/GArysTrousers/hosting-scripts/refs/heads/main/setup-sveltekit-project.sh | bash
wget -qO- https://raw.githubusercontent.com/GArysTrousers/hosting-scripts/refs/heads/main/update-node.sh | update-node.sh
```
## Edit Configs and Download Software
```
sh edit.sh
sh update.sh
```
## Start and Setup Auto Start
```
pm2 start ./ecosystem.config.js
pm2 save
pm2 startup | grep 'sudo' | bash
```
