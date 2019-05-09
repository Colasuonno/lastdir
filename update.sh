#!/bin/bash

if [ -f "environment" ]; then
	rm environment
fi

last_dir=$1

touch environment
echo 'PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"' >> environment

for args in "$@"
do
   if [[ $args == **/**  ]]; then
	   echo $args
	   last_dir=$args
   fi
done

echo 'last_dir="'$last_dir'"' >> environment
bash /home/colasuonno/Desktop/Dev/bash_scripts/update-non-static-env/source.sh
