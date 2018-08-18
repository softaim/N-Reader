#!/bin/bash
clear
echo -e "\e[1;33m       Script Coded By =>   \033[5;37m \033[41m ♥ Vᵢₖₐₛ  Cₕₐᵤdₕₐᵣy ♥  \e[0m"
echo -e "\e[1;33m       Published By =>        \033[5;37m \033[44m   www.gkaim.com   \e[0m"
echo -e "\033[1;36m\033[3;36m Please use against target that you own or have permission to \e[0m"
echo
echo _____________-------------------------_________________
echo -e "             \033[1;32m\033[5;37m\033[42m  SERVICE & OS DETECTION  \e[0m""                 "
echo _____________-------------------------_________________

echo
read -p "Please enter the IP Address or URL of Target: " IP
echo
echo -e "\033[1;33m1.\033[1;32m Detect OS and Services \e[0m"
echo -e "\033[1;33m2.\033[1;32m Standard service detection \e[0m"
echo -e "\033[1;33m3.\033[1;32m Lighter banner grabbing detection  \e[0m"
echo -e "\033[1;33m4.\033[1;32m More aggressive Service Detection \e[0m"
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
if [ $ch -le 4 ] 
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
nmap -Pn -A $IP > $path
elif [ $ch == 2 ]
then
nmap -Pn -sV $IP > $path
elif [ $ch == 3 ]
then
nmap -Pn -sV --version-intensity 0 $IP > $path
elif [ $ch == 4 ]
then
nmap -Pn -sV --version-intensity 5 $IP > $path
fi
echo -e "\e[1;33mAll the output has been saved to: $path \e[0m"
elif [ "$save" == 1 ]; then
if [ $ch == 1 ]
then
nmap -Pn -A $IP
elif [ $ch == 2 ]
then
nmap -Pn -sV $IP
elif [ $ch == 3 ]
then
nmap -Pn -sV --version-intensity 0 $IP
elif [ $ch == 4 ]
then
nmap -Pn -sV --version-intensity 5 $IP
fi
else
chmod +x N.sh
./N.sh
fi
echo 
echo -e '\033[4;32m''\033[7;34m'"I Hope You Enjoying Me, Thanks For Using me\e[0m"' \033[1;32m'
read -p "             To run another scan Hit Enter"
./SO.sh

