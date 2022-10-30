#!/bin/bash

distro=$(sed -n '2p' /etc/os-release | sed 's/NAME=//' | sed 's/\"//g')

while :
do
input=$(zenity \
	--entry \
	--title=Run \
	--icon-name=start \
	--window-icon=question \
	--cancel-label "Cancel" \
	--extra-button "Browse..." \
	--text="Type the name of a program, folder, document, or Internet\nresource, and $distro will open it for you."
)

if [[ "$input" == "Browse..." ]]; then
	browsepath=$(zenity --file-selection --title="Browse")
	xdg-open $browsepath
	exit
else
	if [[ "${input}" =~ ^~ ]]; then
		input="${input/#~/$HOME}";
	fi
	if [ $? -eq 0 ]
	then
		exit
	else
		if [[ "$input" == "" ]]; then
			exit
		xdg-open "$input"
		else
			zenity --error --no-wrap --title="$input" --text="$distro cannot find '$input'. Make sure you typed the name correctly, and then try again." >&2
		fi
	fi
fi
done && exit
