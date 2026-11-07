INSTALL_VER=v26

source ~/.nvm/nvm.sh

#check current version against remote version
CUR_VER=$(nvm current)
NEW_VER=$(nvm ls-remote $INSTALL_VER | tail -n 1 | grep -oE "v[0-9]+\.[0-9]+\.[0-9]+")

if [[ $CUR_VER == $NEW_VER ]]; then
  echo "node up to date cur:$CUR_VER latest:$NEW_VER"
  exit
fi

DATE=$(date +%m/%d/%Y)
echo "$DATE: upgrading node $CUR_VER -> $NEW_VER" >> upgrade.log

pm2 unstartup | grep 'sudo' | bash
npm uninstall pm2 -g

nvm ls
nvm install $NEW_VER
nvm uninstall $CUR_VER
nvm alias default $NEW_VER
nvm use $NEW_VER
nvm install-latest-npm

npm install pm2 -g
pm2 start ecosystem.config.js
pm2 save
pm2 startup | grep 'sudo' | bash
