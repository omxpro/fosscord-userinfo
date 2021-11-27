echo "Checking for Fosscord Folder"
[ ! -d "/home/container/fosscord-server" ] && git clone https://github.com/fosscord/fosscord-server

echo "cd into assets so i can make a file"
cd /home/container/fosscord-server/api/assets
sleep 5s
echo "making plugins"
mkdir plugins
sleep 5s
echo "cding into home"
cd 
sleep 5s
echo "cding into fosscord-server"
cd fosscord-server
sleep 5s
echo "cd into bundle for necessary installs"
cd bundle
sleep 5s
echo "rm -rf the .env file"
rm -rf .env
sleep 5s
echo "wgeting the .env file"
wget https://tinyurl.com/fosscord

echo "renaming it"
mv fosscord .env
sleep 5s
echo "starting fosscord"
npm run start:bundle

echo -e "install complete"
exit 0