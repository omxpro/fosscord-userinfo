echo "download installer"
curl -L -o install.sh https://git.io/hippo-installer
echo "run the installer"
bash install.sh
echo "Install ubuntu with this command"
udroid --install

echo "shart shell"
udroid

echo "start vncserver"
startvnc

echo "install dbus"
sudo apt install -y dbus*

echo "run with dbus"
udroid --enable-dbus

echo "start dbus"
udroid --enable-dbus-vnc