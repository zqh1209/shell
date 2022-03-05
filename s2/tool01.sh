#!/usr/bin/bash

menu() {
    cat <<-EOF 
    +--------------------------------------------------------+
    +                                                        +
    +                 h. help                                +
    +                 d. disk partition                      +
    +                 f. file system mount                   +
    +                 m. memory usage                        +
    +                 s. system load                         +
    +                 q. quit                                +  
    +                                                        +
    +--------------------------------------------------------+
EOF
}

while true
do
	echo -ne "\e[1;34mCommand(h for help): \e[0m"
	read action

	case "$action" in
	h)
		clear
		menu
		;;
	f)
		sudo fdisk -l
		;;
	d)
		sudo df -Th
		;;
	m)
		sudo free -m
		;;
	s)
		sudo uptime
		;;
	q)
		break
		;;
	"")
		:
		;;
	*)
		menu
		;;
	esac
done

figlet bye!
