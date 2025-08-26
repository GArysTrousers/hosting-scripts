pm2 unstartup
npm uninstall pm2 -g
nvm install-latest-npm
nvm uninstall v24
nvm install v24
nvm default v24
nvm use v24
npm install pm2 -g
pm2 start ecosystem.config.js
pm2 save
pm2 startup