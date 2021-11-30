echo "Checking for Fosscord Folder"
[ ! -d "/home/container/fosscord-server" ] && git clone https://github.com/fosscord/fosscord-server

echo "cd into assets so i can make a file"
cd /home/container/fosscord-server/api/assets
	sleep 2s
echo "making plugins"
[ ! -d "/home/container/fosscord-server/bundle/api/assets/plugins" ] && mkdir plugins
sleep 2s
echo "cding into home"
cd 
sleep 2s
echo "cding into fosscord-server"
cd fosscord-server
sleep 2s
echo "cd into bundle for necessary installs"
cd bundle
echo "adding port"
echo "PORT=$SERVER_PORT" > /home/container/fosscord-server/bundle/.env
sleep 2s

echo "adding Threads"
echo "THREADS=1" >> /home/container/fosscord-server/bundle/.env
sleep 2s
echo "starting fosscord"
npm run start:bundle

echo -e "install complete"
exit 0