# Setup Sveltkit Project
## Install nvm
```
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
bash
nvm install-latest-npm
nvm install v25
npm i pm2 -g
```
## Install git
```
sudo apt-get update
sudo apt-get install git
```
## Create User
```
sudo adduser [username
suod usermod -aG [username]
```
## Setup Server Script
```
wget -qO- https://raw.githubusercontent.com/GArysTrousers/hosting-scripts/refs/heads/main/setup-sveltekit-project.sh | bash
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
pm2 startup
```
Follow the instructions to setup auto start
