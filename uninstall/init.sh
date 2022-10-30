#!/usr/bin/env bash

clear
echo "Please wait..."

DEP1="sed"
GDISTRO=$(sed -n '2p' /etc/os-release | sed 's/NAME=//' | sed 's/\"//g')

clear

echo " __        __      __                       __  ___                 ___  __  "
echo "/__\` |  | |__) __ |__)    |  | |\ | | |\ | /__\`  |   /\  |    |    |__  |__) "
echo ".__/ \__/ |       |  \    \__/ | \| | | \| .__/  |  /~~\ |___ |___ |___ |  \ "
echo "                                                                 for $GDISTRO"

sleep 1s

#Dependencies check

echo -e "\n\nChecking dependencies...\n"

command -v $DEP1 >/dev/null || { echo -e "\n\n$DEP1 was not found, installation canceled.\n\nTry running 'sudo apt install $DEP1'." >&2; exit 1; }

echo -e "OK\n"

sleep 0.5s

echo -e "Sup-'R' will be removed."
read -rsn1 -p "When ready, press any key to uninstall."; echo

TIMEFORMAT='Deleted 5.59kb of files in %2R seconds.'

time {
echo -e "\nSetting up removal directory...\n"
rm -f -r ~/.run-prompt/
}

echo -e "Done!\n"
echo -e "SUP-R has been uninstalled.\n"
sleep 1s
echo -e "Exiting..."
exit
