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
sudo adduser server
```
## Setup Server
```
wget -qO- https://raw.githubusercontent.com/GArysTrousers/hosting-scripts/refs/heads/main/setup-sveltekit-project.sh | bash
sh edit.sh
```
