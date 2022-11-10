#!/usr/bin/env bash

clear
echo "Please wait..."
# Variables

DEP1="sed"
DEP2="xdg-open"
DEP3="zenity"
GDISTRO=$(sed -n '2p' /etc/os-release | sed 's/NAME=//' | sed 's/\"//g')
GVER=$(curl -s https://raw.githubusercontent.com/DabiaTheNord/Sup-R/main/install/get/version)
GET_MAIN=https://raw.githubusercontent.com/DabiaTheNord/Sup-R/main/install/get/run.sh
GET_LICENSE=https://raw.githubusercontent.com/DabiaTheNord/Sup-R/main/install/get/LICENSE
GET_ICONA=https://raw.githubusercontent.com/DabiaTheNord/Sup-R/main/install/get/icon/48a.png
GET_ICONB=https://raw.githubusercontent.com/DabiaTheNord/Sup-R/main/install/get/icon/48b.png

# Variables

clear

echo " __        __      __             __  ___                 ___  __  "
echo "/__\` |  | |__) __ |__)    | |\ | /__\`  |   /\  |    |    |__  |__) "
echo ".__/ \__/ |       |  \    | | \| .__/  |  /~~\ |___ |___ |___ |  \ "
echo "                                                             v$GVER"

sleep 1s

#Dependencies check

echo -e "\n\nChecking dependencies...\n"
command -v $DEP1 >/dev/null || { echo -e "\n\n$DEP1 was not found, installation canceled.\n\nTry running 'sudo apt install $DEP1'." >&2; exit 1; }
command -v $DEP2 >/dev/null || { echo -e "\n\n$DEP2 was not found, installation canceled.\n\nTry running 'sudo apt install $DEP2'." >&2; exit 1; }
command -v $DEP3 >/dev/null || { echo -e "\n\n$DEP3 was not found, installation canceled.\n\nTry running 'sudo apt install $DEP3'." >&2; exit 1; }

echo -e "OK\n"

sleep 0.5s

echo -e "Sup-'R' will be installed."
read -rsn1 -p "When ready, press any key to install."; echo

TIMEFORMAT='Downloaded 5.59kb of files in %2R seconds.'
time {

echo -e "\nSetting up installation directory...\n"
mkdir -p ~/.run-prompt/
mkdir -p ~/.run-prompt/icon/
echo -e "Done\n"
cd ~/.run-prompt/
echo -e "Downloading content...\n"
echo -e "Downloading run.sh (0.86kb)"
curl -O -s $GET_MAIN
echo -e "Created ~/.run-prompt/run.sh\n"
echo -e "Downloading LICENSE (1.04kb)"
curl -O -s $GET_LICENSE
echo -e "Created ~/.run-prompt/LICENSE\n"
cd ~/.run-prompt/icon/
echo -e "Downloading 48a.png (1.21kb)"
curl -O -s $GET_ICONA
echo -e "Created ~/.run-prompt/icon/48a\n"
echo -e "Downloading 48b.png (2.48kb)"
curl -O -s $GET_ICONB
echo -e "Created ~/.run-prompt/icon/48b\n"

}

while true; do
read -p "Do you want to proceed? (y/n) " yn

case $yn in 
	[yY] ) echo -e "Need sudo permissions to write in usr/share/applications, asking..."; sudo echo -e "[Desktop Entry]\nName="Run"\nVersion=$GVER\nComment="A fancy GTK run prompt."\nExec=~/.run-prompt/run.sh\nIcon=~/run-prompt/icon/48a.png\nTerminal=false\nType=Application" > usr/share/applications/run-prompt.desktop; break;;
	[nN] ) break;;
	* ) ;;
esac
done

while true; do
read -p "Do you wish to create a .desktop file? (y/n) " yn

case $yn in 
	[yY] ) ln -sf ~/.run-prompt/run.sh ~/Desktop/run.sh; break;;
	[nN] ) break;;
	* ) ;;
esac
done

echo -e "\nFinishing up..."
chmod u+x ~/.run-prompt/run.sh
echo -e "SUP-R has been installed to ~/.run-prompt/run.sh.\n"
sleep 1s
echo "Exiting..."
exit
