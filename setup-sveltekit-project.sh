echo "App name:"
read name
echo "Repo name (user/repo):"
read repo
echo "Service Username:"
read username

dir="/home/$username"



mkdir ./data
mkdir ./site
mkdir ./env
mkdir ./logs

touch ./env/.env

# make edit script
cat > ./edit.sh << EOF
nano ./update.sh
nano ./ecosystem.config.js
EOF

# make update.sh
cat > ./update.sh << EOF
#!/bin/bash

token=""

pm2 stop $name

set -e

rm -rf "$dir/site"

git clone https://\${token}@github.com/${repo}.git "$dir/site"
cp "$dir/env/.env" "$dir/site"
cd "$dir/site"
npm i
npm run build

pm2 start $name
EOF

# make ecosystem.config.js
cat > ./ecosystem.config.js << EOF
module.exports = {
  apps: [
    {
      name: "app_name",
      script: "./index.js",
      cwd: "/home/server/site/build/",
      env: {
        PORT: "3000"
      }
    }
  ]
}
EOF
