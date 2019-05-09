
last_command() { (history | tail -2 | head -1 | sed -r 's/^[ \t]*[0-9]*[ \t]+([^ \t].*$)/\1/'); }
  
last=$(last_command)

if [ ${#last} > 0 ]; then
	if [[ $last == **/**  ]]; then
		sudo bash /home/colasuonno/Desktop/Dev/bash_scripts/update-non-static-env/update.sh $last
	fi
		
fi

