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

echo "setting neccecery vars"
echo "setting port"
echo "PORT=$SERVER_PORT" > /home/container/fosscord-server/bundle/.env
echo "h"
echo "setting threads to 1"
echo "THREADS=1" >  /home/container/fosscord-server/bundle/.env

echo "starting fosscord"
npm run start:bundle

echo -e "install complete"
exit 0