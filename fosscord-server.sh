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

echo "building fosscord"
 npm run setup
sleep 10s
 echo "thanks for downloading fosscord"
 cd
 echo "downloading fosscord-run.sh"
 wget https://raw.githubusercontent.com/omxpro/fosscord-userinfo/main/fosscord-run.sh
 sleep 27s
 echo "change the startup command to bash fosscord-run.sh and make sure you gave your file 777 perms"
 sleep 27s
 echo "deleting fosscord-server.sh"
 rm -rf fosscord-server.sh
 
 

echo -e "install complete"
exit 0