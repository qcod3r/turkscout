clear
printf "     \e[34m\e[1;77m
╔════╗       ╔╗  ╔═══╗             ╔╗ 
║╔╗╔╗║       ║║  ║╔═╗║            ╔╝╚╗
╚╝║║╚╝╔╗╔╗╔═╗║║╔╗║╚══╗╔══╗╔══╗╔╗╔╗╚╗╔╝
  ║║  ║║║║║╔╝║╚╝╝╚══╗║║╔═╝║╔╗║║║║║ ║║ 
 ╔╝╚╗ ║╚╝║║║ ║╔╗╗║╚═╝║║╚═╗║╚╝║║╚╝║ ║╚╗
 ╚══╝ ╚══╝╚╝ ╚╝╚╝╚═══╝╚══╝╚══╝╚══╝ ╚═╝
\e[0m\n"
printf "\n"
printf "\e[1;31;42m ### by @qcod3r ###\e[0m \n"
printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;94m DURSHIKAX\e[0m      \e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;94m SENIOR-MASK\e\n"                                

menu () {
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Which tool do you want to use? \e[0m\en' tool
if [[ $tool == 1 ]]; then
cd tools/durshikax
bash durshikax.sh

elif [[ $tool == 2 ]]; then
cd tools/senior-mask
./senior-mask.sh

else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
menu
fi
}
menu
