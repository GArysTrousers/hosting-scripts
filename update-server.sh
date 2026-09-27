pm2 unstartup | grep 'sudo' | bash
npm uninstall pm2 -g
nvm install-latest-npm

nvm ls
read -p "Version to install: " NEW_VER
nvm install $NEW_VER
read -p "Version to uninstall: " OLD_VER
nvm uninstall $OLD_VER
nvm alias default $NEW_VER
nvm use $NEW_VER

npm install pm2 -g
pm2 start ecosystem.config.js
pm2 save
pm2 startup | grep 'sudo' | bash
