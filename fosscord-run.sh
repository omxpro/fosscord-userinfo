echo "Checking for Fosscord Folder"
[ ! -d "/home/container/fosscord-server" ] && git clone https://github.com/fosscord/fosscord-server

echo "cd into assets so i can make a file"
cd /home/container/fosscord-server/api/assets

echo "making plugins"
mkdir plugins

echo "cding into home"
cd 

echo "cding into fosscord-server"
cd fosscord-server

echo "cd into bundle for necessary installs"
cd bundle
echo "rm -rf the .env file"
rm -rf .env
echo "wgeting the .env file"
wget https://tinyurl.com/fosscord
echo "starting fosscord"
npm run start:bundle

echo -e "install complete"
exit 0