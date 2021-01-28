clear
printf "     \e[34m\e[1;77m
███████╗███████╗███╗   ██╗██╗ ██████╗ ██████╗     ███╗   ███╗ █████╗ ███████╗██╗  ██╗
██╔════╝██╔════╝████╗  ██║██║██╔═══██╗██╔══██╗    ████╗ ████║██╔══██╗██╔════╝██║ ██╔╝
███████╗█████╗  ██╔██╗ ██║██║██║   ██║██████╔╝    ██╔████╔██║███████║███████╗█████╔╝ 
╚════██║██╔══╝  ██║╚██╗██║██║██║   ██║██╔══██╗    ██║╚██╔╝██║██╔══██║╚════██║██╔═██╗ 
███████║███████╗██║ ╚████║██║╚██████╔╝██║  ██║    ██║ ╚═╝ ██║██║  ██║███████║██║  ██╗
╚══════╝╚══════╝╚═╝  ╚═══╝╚═╝ ╚═════╝ ╚═╝  ╚═╝    ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
\e[0m\n"
printf "     \e[1;34m::     Senior Mask v1! By @qcod3r\e[0m\n"
printf "     \e[1;34m::     By using this tool, you confirm that all responsibilities belong to you.\e[0m\n"
printf "     \e[1;34m::     You also agree that the best hacker team is TurkHackTeam.\e[0m\n"
printf "     \e[101m\e[1;77m::     Ne Mutlu Türk'üm Diyene!  |☾☆|  :: \e[0m\n"
printf "\n"
printf "\e[1;31;42m ### SET PHISHING URL ###\e[0m \n"
echo -n "Paste Phishing URL please (with http or https): "
read phish
sleep 1
echo "URL is shorting..."
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
printf "\n\e[1;31;42m ### SET MASKING URL ###\e[0m \n"
echo 'Domain to mask the Phishing URL (with http or https)'
echo '(ex: https://google.com or http://www.anything.org):'
printf "\e[32m=>\e[0m "
read mask
printf '\nType social engineering words:(free-followers, most-funny-video)'
printf "\n"
printf "\e[34mDon't use space just use '-' between social engineering words\e[0m"
printf "\n"
printf "\e[32m=>\e[0m "
read words
printf "\n"
printf "Generating SeniorMask Link..."
final=$mask"|"$words@$shorter
printf "\n"
printf "\e[1;31;42m ### Here is the masked URL: \e[0m ${final} \n"
