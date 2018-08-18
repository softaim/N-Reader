#!/bin/bash
clear
echo -e "\e[1;33m       Script Coded By =>   \033[5;37m \033[41m ♥ Vᵢₖₐₛ  Cₕₐᵤdₕₐᵣy ♥  \e[0m"
echo -e "\e[1;33m       Published By =>        \033[5;37m \033[44m   www.gkaim.com   \e[0m"
echo -e "\033[1;36m\033[3;36m Please use against target that you own or have permission to \e[0m"
echo
echo _____________-----------------------_________________
echo -e "                 \033[1;32m\033[5;37m\033[42m MIXED SCAN  \e[0m""                 "
echo _____________-----------------------_________________

echo
read -p "Please enter the IP Address or URL of Target: " IP
echo 
echo -e "\e[1;33m Plesae choose what you want to perform: \e[0m"
echo
echo -e "\033[1;33m1.\033[1;32m Packet Trace + (A). \e[0m"
echo -e "\033[1;33m2.\033[1;32m verbose + stealth syn scan + T4 timing, OS and version detection. \e[0m"
echo -e "\033[1;33m3.\033[1;32m verbose + stealth syn scan + T5 timing, OS and version detection.\e[0m" 
echo -e "\033[1;33m4.\033[1;32m verbose + stealth syn scan + T4 timing, OS and version detection + traceroute and scripts. \e[0m"
echo -e "\033[1;33m5.\033[1;32m verbose + stealth syn scan + T5 timing, OS and version detection + traceroute and scripts. \e[0m"
echo -e "\033[1;33m6.\033[1;32m verbose + stealth syn scan + T4 timing, OS and version detection + full port range scan. \e[0m"
echo -e "\033[1;33m7.\033[1;32m verbose + stealth syn scan + T5 timing, OS and version detection + full port range scan.\e[0m"
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
if [ $ch -le 7 ] 
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
nmap -Pn -A --packet-trace $IP > $path
elif [ $ch == 2 ]
then
nmap -Pn -v -sV -O -sS -T4 $IP > $path
elif [ $ch == 3 ]
then
nmap -Pn -v -sV -O -sS -T5 $IP > $path
elif [ $ch == 4 ]
then
nmap -Pn -v -sS -A -T4 $IP > $path
elif [ $ch == 5 ]
then
nmap -Pn -v -sS -A -T5 $IP > $path
elif [ $ch == 6 ]
then
nmap -Pn -v -p 1-65535 -sV -O -sS -T4 $IP >$path
elif [ $ch == 7 ]
then
nmap -Pn -v -p 1-65535 -sV -O -sS -T5 $IP >$path
fi
echo -e "\e[1;33mAll the output has been saved to: $path \e[0m"
elif [ "$save" == 1 ]; then
if [ $ch == 1 ]
then
nmap -Pn -A --packet-trace $IP
elif [ $ch == 2 ]
then
nmap -Pn -v -sV -O -sS -T4 $IP
elif [ $ch == 3 ]
then
nmap -Pn -v -sV -O -sS -T5 $IP
elif [ $ch == 4 ]
then
nmap -Pn -v -sS -A -T4 $IP
elif [ $ch == 5 ]
then
nmap -Pn -v -sS -A -T5 $IP
elif [ $ch == 6 ]
then
nmap -Pn -v -p 1-65535 -sV -O -sS -T4 $IP
elif [ $ch == 7 ]
then
nmap -Pn -v -p 1-65535 -sV -O -sS -T5 $IP
fi
else
chmod +x N.sh
./N.sh
fi
echo 
echo -e '\033[4;32m''\033[7;34m'"I Hope You Enjoying Me, Thanks For Using me\e[0m"' \033[1;32m'
read -p "             To run another scan Hit Enter "

./Mix.sh
exit
