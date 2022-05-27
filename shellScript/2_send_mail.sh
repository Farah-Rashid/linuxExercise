#!/usr/bin/bash
while true
do
	s=$(systemctl status myownservice | head -3 | grep "inactive" | wc -l)


	if (($s == 1))
	then
	
		echo "Sending Mail please wait..."
		ssmtp farahrashid54@gmail.com < file.txt
		echo "Mail send successfully..."
		exit
	
	fi
	
	
done




