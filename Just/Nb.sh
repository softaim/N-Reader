#!/bin/bash
clear
echo -e "\e[1;33m       Script Coded By =>   \033[5;37m \033[41m ♥ Vᵢₖₐₛ  Cₕₐᵤdₕₐᵣy ♥  \e[0m"
echo -e "\e[1;33m       Published By =>        \033[5;37m \033[44m   www.gkaim.com   \e[0m"
echo -e "\033[1;36m\033[3;36m Please use against target that you own or have permission to \e[0m"
echo
echo _____________------------------------_________________
echo -e "                  \033[1;32m\033[5;37m\033[42m  NET BIOS  \e[0m""                 "
echo _____________------------------------_________________

echo
read -p "Please enter the IP Address or URL of Target: " IP
echo
echo -e "\033[1;33m1.\033[1;32m Display Netbios name \e[0m"
echo -e "\033[1;33m2.\033[1;32m All Netbios servers on subnet \e[0m"
echo -e "\033[1;33m3.\033[1;32m Check Netbios servers are vulnerable to MS08-067 or not \e[0m"
echo
echo -e "\033[1;33m0.\033[1;36m MAIN MENU \e[0m"
echo
read -p "Enter your choice: " ch
if [ $ch == 0 ]
then
cd ..
chmod + N-Reader.sh
./N-Reader.sh
fi
if [ $ch -le 3 ] 
then
echo -e "\e[1;33m1. Continue in the terminal \e[0m"
echo _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
echo -e "\e[1;33m2. Save the output to a text file \e[0m"
read -p "Enter your opinion: " save
else
chmod +x N.sh
./N.sh
fi
if [ "$save" == 2 ]; then 
read -p "Please specify the full path along with the file name(add .txt at the end of file name)" path
if [ $ch == 1 ]
then
nmap -Pn -sU --script nbstat.nse -p 137 $IP > $path
elif [ $ch == 2 ]
then
nmap -Pn -sV -v -p 1-65535 $IP > $path
elif [ $ch == 3 ]
then
nmap -Pn --script-args=unsafe=1 --script smb-check-vulns.nse -p 445 $IP > $path
fi
echo -e "\e[1;33mAll the output has been saved to: $path \e[0m"
elif [ "$save" == 1 ]; then
if [ $ch == 1 ]
then
nmap -Pn -sU --script nbstat.nse -p 137 $IP
elif [ $ch == 2 ]
then
nmap -Pn -sV -v -p 1-65535 $IP
elif [ $ch == 3 ]
then
nmap -Pn --script-args=unsafe=1 --script smb-check-vulns.nse -p 445 $IP
fi
else
chmod +x N.sh
./N.sh
fi
echo 
echo -e '\033[4;32m''\033[7;34m'"I Hope You Enjoying Me, Thanks For Using me\e[0m"' \033[1;32m'
read -p "             To run another scan Hit Enter"
./Nb.sh
done 

