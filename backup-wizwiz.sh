#!/bin/bash

# Written By: wizwiz

echo " "

echo -e "\e[32m
██╗    ██╗██╗███████╗██╗    ██╗██╗███████╗
██║    ██║██║╚══███╔╝██║    ██║██║╚══███╔╝
██║ █╗ ██║██║  ███╔╝ ██║ █╗ ██║██║  ███╔╝ 
██║███╗██║██║ ███╔╝  ██║███╗██║██║ ███╔╝  
╚███╔███╔╝██║███████╗╚███╔███╔╝██║███████╗
 ╚══╝╚══╝ ╚═╝╚══════╝ ╚══╝╚══╝ ╚═╝╚══════╝
\033[0m"

echo -e "\n\e[92mplease wait ...\033[0m\n"

sleep 2

if [ "$(id -u)" -ne 0 ]; then
    echo -e "\n\033[33mPlease run as root\033[0m"
    exit
fi

  echo " "
  echo -e  "--------------------------"
  echo -e  "       \xE2\x9D\xA4  wizwiz \xE2\x9D\xA4"
  echo -e  "--------------------------"
  echo -e  "1. backup Vaxilu"
  echo -e  "2. backup Alireza"
  echo -e  "3. backup Mhsanaei"
  echo -e  "4. backup NidukaAkalanka"
  echo -e  "5. backup FranzKafkaYu"
  echo -e  "6. backup Hossinasaadi"
  echo -e  "7. backup HexaSoftwareTech"
  echo -e  "8. backup Npanel"
  echo -e  "9. backup Marzban"
  echo -e  "10. Exit"
  read -p "Please Select Action: " choice
  echo " "

if [ "$choice" = "1" ] || [ "$choice" = "2" ] || [ "$choice" = "3" ] || [ "$choice" = "5" ] || [ "$choice" = "6" ] || [ "$choice" = "7" ]; then
	
        sudo apt update && apt upgrade -y
	sudo apt install lsb-release
	sudo apt install software-properties-common -y
	sudo add-apt-repository ppa:ondrej/php -y
	sudo apt-get install php-curl -y
	sudo apt-get install -y php8.2
	sudo apt install apt-transport-https
	sudo apt install ca-certificates

	echo -e "\n\e[92mPackages Installed Continuing.\033[0m\n"

	wait
	printf "\e[33m[+] \e[36mbot token: \033[0m"
	read BOT_TOKEN
	printf "\e[33m[+] \e[36madmin id: \033[0m"
	read ADMIN_ID
	printf "\e[33m[+] \e[36mserver name: \033[0m"
	read SERVER_NAME
	printf "\e[33m[+] \e[36mSet cron minutes: \033[0m"
	read CRON_TAB
	if [ "$BOT_TOKEN" = "" ] || [ "$ADMIN_ID" = "" ] || [ "$SERVER_NAME" = "" ] || [ "$CRON_TAB" = "" ]; then
	exit
	fi
	ASAS="$"

	touch x-ui.php

	chmod -R 777 /etc/x-ui/x-ui.db

	echo " " >> /root/x-ui.php
	echo "<?php" >> /root/x-ui.php
	echo "function sendDocument(${ASAS}username, ${ASAS}document_path, ${ASAS}caption = null, ${ASAS}parse_mode = 'HTML') {" >> /root/x-ui.php
	echo "${ASAS}url = 'https://api.telegram.org/bot${BOT_TOKEN}/sendDocument';" >> /root/x-ui.php
	echo "${ASAS}wizwiz = ['chat_id' => ${ASAS}username,'document' => new CURLFile(${ASAS}document_path),'caption' => ${ASAS}caption,'parse_mode' => ${ASAS}parse_mode];" >> /root/x-ui.php
	echo "${ASAS}ch = curl_init();" >> /root/x-ui.php
	echo "curl_setopt_array(${ASAS}ch, [CURLOPT_URL => ${ASAS}url,CURLOPT_RETURNTRANSFER => true,CURLOPT_POSTFIELDS => ${ASAS}wizwiz]);" >> /root/x-ui.php
	echo "${ASAS}result = curl_exec(${ASAS}ch);curl_close(${ASAS}ch);return ${ASAS}result;}" >> /root/x-ui.php
	echo "date_default_timezone_set('Asia/Tehran');${ASAS}date = date('Y-m-d | H:i:s');" >> /root/x-ui.php
	echo "sendDocument('${ADMIN_ID}', '/etc/x-ui/x-ui.db', '🍄 ${SERVER_NAME} - '.${ASAS}date);" >> /root/x-ui.php
	echo "?>" >> /root/x-ui.php
	echo " " >> /root/x-ui.php

	(crontab -l ; echo "*/${CRON_TAB} * * * * /usr/bin/php /root/x-ui.php >/dev/null 2>&1") | sort - | uniq - | crontab -

	clear
	
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe values have been configured\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe cron job has been set\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mA new file was created in the root path\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe database username and password were correct\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe token was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mAdmin's numeric ID was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mSettings saved successfully\033[0m"
	sleep 0.7
	echo -e "\xE2\x98\x85 \e[94mThe backup settings have been successfully completed.\033[0m\n"
	
elif [ "$choice" = "4" ]; then
            
        sudo apt update && apt upgrade -y
	sudo apt install lsb-release
	sudo apt install software-properties-common -y
	sudo add-apt-repository ppa:ondrej/php -y
	sudo apt-get install php-curl -y
	sudo apt-get install -y php8.2
	sudo apt install apt-transport-https
	sudo apt install ca-certificates
	
	printf "\e[33m[+] \e[36mbot token: \033[0m"
	read BOT_TOKEN
	printf "\e[33m[+] \e[36madmin id: \033[0m"
	read ADMIN_ID
	printf "\e[33m[+] \e[36mserver name: \033[0m"
	read SERVER_NAME
	printf "\e[33m[+] \e[36mSet cron minutes: \033[0m"
	read CRON_TAB
	if [ "$BOT_TOKEN" = "" ] || [ "$ADMIN_ID" = "" ] || [ "$SERVER_NAME" = "" ] || [ "$CRON_TAB" = "" ]; then
	exit
	fi
	ASAS="$"
	    
	touch x-ui-english.php

	chmod -R 777 /etc/x-ui-english/x-ui-english.db
    
	echo " " >> /root/x-ui-english.php
	echo "<?php" >> /root/x-ui-english.php
	echo "function sendDocument(${ASAS}username, ${ASAS}document_path, ${ASAS}caption = null, ${ASAS}parse_mode = 'HTML') {" >> /root/x-ui-english.php
	echo "${ASAS}url = 'https://api.telegram.org/bot${BOT_TOKEN}/sendDocument';" >> /root/x-ui-english.php
	echo "${ASAS}wizwiz = ['chat_id' => ${ASAS}username,'document' => new CURLFile(${ASAS}document_path),'caption' => ${ASAS}caption,'parse_mode' => ${ASAS}parse_mode];" >> /root/x-ui-english.php
	echo "${ASAS}ch = curl_init();" >> /root/x-ui-english.php
	echo "curl_setopt_array(${ASAS}ch, [CURLOPT_URL => ${ASAS}url,CURLOPT_RETURNTRANSFER => true,CURLOPT_POSTFIELDS => ${ASAS}wizwiz]);" >> /root/x-ui-english.php
	echo "${ASAS}result = curl_exec(${ASAS}ch);curl_close(${ASAS}ch);return ${ASAS}result;}" >> /root/x-ui-english.php
	echo "date_default_timezone_set('Asia/Tehran');${ASAS}date = date('Y-m-d | H:i:s');" >> /root/x-ui-english.php
	echo "sendDocument('${ADMIN_ID}', '/etc/x-ui-english/x-ui-english.db', '🔅${SERVER_NAME} - '.${ASAS}date);" >> /root/x-ui-english.php
	echo "?>" >> /root/x-ui-english.php
	echo " " >> /root/x-ui-english.php

	(crontab -l ; echo "*/${CRON_TAB} * * * * /usr/bin/php /root/x-ui-english.php >/dev/null 2>&1") | sort - | uniq - | crontab -

	
	clear
	
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe values have been configured\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe cron job has been set\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mA new file was created in the root path\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe database username and password were correct\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe token was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mAdmin's numeric ID was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mSettings saved successfully\033[0m"
	sleep 0.7
	echo -e "\xE2\x98\x85 \e[94mThe backup settings have been successfully completed.\033[0m\n"
	
	
elif [ "$choice" = "8" ]; then

        sudo apt update && apt upgrade -y
	sudo apt install lsb-release
	sudo apt install software-properties-common -y
	sudo add-apt-repository ppa:ondrej/php -y
	sudo apt-get install php-curl -y
	sudo apt-get install -y php8.2
	sudo apt install apt-transport-https
	sudo apt install ca-certificates
	
	printf "\e[33m[+] \e[36mbot token: \033[0m"
	read BOT_TOKEN
	printf "\e[33m[+] \e[36madmin id: \033[0m"
	read ADMIN_ID
	printf "\e[33m[+] \e[36mserver name: \033[0m"
	read SERVER_NAME
	printf "\e[33m[+] \e[36mSet cron minutes: \033[0m"
	read CRON_TAB
	if [ "$BOT_TOKEN" = "" ] || [ "$ADMIN_ID" = "" ] || [ "$SERVER_NAME" = "" ] || [ "$CRON_TAB" = "" ]; then
	exit
	fi
	ASAS="$"
	    
    	# create a new file
	touch Npanel.php
	
	chmod -R 777 /opt/Npanel/users.db
	chmod -R 777 /opt/Npanel/panel.json

	echo " " >> /root/Npanel.php
	echo "<?php" >> /root/Npanel.php
	echo "function sendDocument(${ASAS}username, ${ASAS}document_path, ${ASAS}caption = null, ${ASAS}parse_mode = 'HTML') {" >> /root/Npanel.php
	echo "${ASAS}url = 'https://api.telegram.org/bot${BOT_TOKEN}/sendDocument';" >> /root/Npanel.php
	echo "${ASAS}wizwiz = ['chat_id' => ${ASAS}username,'document' => new CURLFile(${ASAS}document_path),'caption' => ${ASAS}caption,'parse_mode' => ${ASAS}parse_mode];" >> /root/Npanel.php
	echo "${ASAS}ch = curl_init();" >> /root/Npanel.php
	echo "curl_setopt_array(${ASAS}ch, [CURLOPT_URL => ${ASAS}url,CURLOPT_RETURNTRANSFER => true,CURLOPT_POSTFIELDS => ${ASAS}wizwiz]);" >> /root/Npanel.php
	echo "${ASAS}result = curl_exec(${ASAS}ch);curl_close(${ASAS}ch);return ${ASAS}result;}" >> /root/Npanel.php
	echo "date_default_timezone_set('Asia/Tehran');${ASAS}date = date('Y-m-d | H:i:s');" >> /root/Npanel.php
	echo "sendDocument('${ADMIN_ID}', '/opt/Npanel/users.db', '🎯 ${SERVER_NAME} - '.${ASAS}date);sendDocument('${ADMIN_ID}', '/opt/Npanel/panel.json', '🔰${SERVER_NAME} - '.${ASAS}date);" >> /root/Npanel.php
	echo "?>" >> /root/Npanel.php
	echo " " >> /root/Npanel.php
	
	(crontab -l ; echo "*/${CRON_TAB} * * * * /usr/bin/php /root/Npanel.php >/dev/null 2>&1") | sort - | uniq - | crontab -


	
	clear
	
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe values have been configured\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe cron job has been set\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mA new file was created in the root path\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe database username and password were correct\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe token was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mAdmin's numeric ID was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mSettings saved successfully\033[0m"
	sleep 0.7
	echo -e "\xE2\x98\x85 \e[94mThe backup settings have been successfully completed.\033[0m\n"
	
	
elif [ "$choice" = "9" ]; then

        sudo apt update && apt upgrade -y
	sudo apt install lsb-release
	sudo apt install software-properties-common -y
	sudo add-apt-repository ppa:ondrej/php -y
	sudo apt-get install php-curl -y
	sudo apt-get install -y php8.2
	sudo apt install apt-transport-https
	sudo apt install ca-certificates
	
	printf "\e[33m[+] \e[36mbot token: \033[0m"
	read BOT_TOKEN
	printf "\e[33m[+] \e[36madmin id: \033[0m"
	read ADMIN_ID
	printf "\e[33m[+] \e[36mserver name: \033[0m"
	read SERVER_NAME
	printf "\e[33m[+] \e[36mSet cron minutes: \033[0m"
	read CRON_TAB
	echo " "
	if [ "$BOT_TOKEN" = "" ] || [ "$ADMIN_ID" = "" ] || [ "$SERVER_NAME" = "" ] || [ "$CRON_TAB" = "" ]; then
	exit
	fi
	
	ASAS="$"
	
	touch Marzban.php
	
	chmod -R 777 /var/lib/marzban/db.sqlite3
    
	echo " " >> /root/Marzban.php
	echo "<?php" >> /root/Marzban.php
	echo "function sendDocument(${ASAS}username, ${ASAS}document_path, ${ASAS}caption = null, ${ASAS}parse_mode = 'HTML') {" >> /root/Marzban.php
	echo "${ASAS}url = 'https://api.telegram.org/bot${BOT_TOKEN}/sendDocument';" >> /root/Marzban.php
	echo "${ASAS}wizwiz = ['chat_id' => ${ASAS}username,'document' => new CURLFile(${ASAS}document_path),'caption' => ${ASAS}caption,'parse_mode' => ${ASAS}parse_mode];" >> /root/Marzban.php
	echo "${ASAS}ch = curl_init();" >> /root/Marzban.php
	echo "curl_setopt_array(${ASAS}ch, [CURLOPT_URL => ${ASAS}url,CURLOPT_RETURNTRANSFER => true,CURLOPT_POSTFIELDS => ${ASAS}wizwiz]);" >> /root/Marzban.php
	echo "${ASAS}result = curl_exec(${ASAS}ch);curl_close(${ASAS}ch);return ${ASAS}result;}" >> /root/Marzban.php
	echo "date_default_timezone_set('Asia/Tehran');${ASAS}date = date('Y-m-d | H:i:s');" >> /root/Marzban.php
	echo "sendDocument('${ADMIN_ID}', '/var/lib/marzban/db.sqlite3', '🍕${SERVER_NAME} - '.${ASAS}date);" >> /root/Marzban.php
	echo "?>" >> /root/Marzban.php
	echo " " >> /root/Marzban.php

	(crontab -l ; echo "*/${CRON_TAB} * * * * /usr/bin/php /root/Marzban.php >/dev/null 2>&1") | sort - | uniq - | crontab -
	
	
	clear
	
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe values have been configured\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe cron job has been set\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mA new file was created in the root path\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe database username and password were correct\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe token was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mAdmin's numeric ID was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mSettings saved successfully\033[0m"
	sleep 0.7
	echo -e "\xE2\x98\x85 \e[94mThe backup settings have been successfully completed.\033[0m\n"
	
	
elif [ "$choice" = "9" ]; then

exit

else
echo -e "\nThe command entered is incorrect\n"
fi
