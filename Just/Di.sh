#!/bin/bash
clear
echo -e "\e[1;33m       Script Coded By =>   \033[5;37m \033[41m ♥ Vᵢₖₐₛ  Cₕₐᵤdₕₐᵣy ♥  \e[0m"
echo -e "\e[1;33m       Published By =>        \033[5;37m \033[44m   www.gkaim.com   \e[0m"
echo -e "\033[1;36m\033[3;36m Please use against target that you own or have permission to \e[0m"
echo
echo _____________----------------------------------_________________
echo -e "             \033[1;32m\033[5;37m\033[42m DIGGING DEEPER  WITH NSE Scripts \e[0m""                 "
echo _____________----------------------------------_________________
echo
read -p "Please enter the IP Address or URL of Target: " IP
echo
echo -e "\033[1;33m1.\033[1;32m Scan using default safe scripts \e[0m"
echo -e "\033[1;33m2.\033[1;32m Script Discovery \e[0m"
echo -e "\033[1;33m3.\033[1;32m Vulnerability Scan \e[0m"
echo -e "\033[1;33m4.\033[1;32m Find vulnerability active exploit \e[0m"
echo -e "\033[1;33m5.\033[1;32m Check FTP services allow on FTP Bounce attack to other hosts on network \e[0m"
echo -e "\033[1;33m6.\033[1;32m Identify all SMB Shares  \e[0m"
echo -e "\033[1;33m7.\033[1;32m Identify MySQL Serviec details \e[0m"
echo -e "\033[1;33m8.\033[1;32m Scan using a specific NSE script \e[0m"
echo -e "\033[1;33m9.\033[1;32m Scan with a set of scripts \e[0m"
echo -e "\033[1;33m10.\033[1;32m DNS Brute Force \e[0m"
echo -e "\033[1;33m11.\033[1;32m Find Hosts on IP using Script \e[0m"
echo -e "\033[1;33m12.\033[1;32m Traceroute Geolocation \e[0m"
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
if [ $ch -le 12 ] 
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
nmap -Pn-sV -sC $IP > $path
elif [ $ch == 2 ]
then
nmap -Pn -sP --script discovery $IP > $path
elif [ $ch == 3 ]
then
nmap -Pn --script   vuln $IP > $path
elif [ $ch == 4 ]
then
nmap -Pn -d  --script  exploit $IP > $path
elif [ $ch == 5 ]
then
nmap -Pn --script  ftp-bounce $IP > $path
elif [ $ch == 6 ]
then
nmap -Pn  --script  smb-enum-shares $IP > $path
elif [ $ch == 7 ]
then
nmap -Pn  --script  mysql-info $IP > $path
elif [ $ch == 8 ]
then
nmap -Pn -sV --script=ssl-heartbleed.nse $IP > $path
elif [ $ch == 9 ]
then
nmap -Pn -sV --script=smb* $IP > $path
elif [ $ch == 10 ]
then
nmap -Pn --script dns-brute.nse $IP > $path
elif [ $ch == 11 ]
then
nmap -Pn --script hostmap-bfk.nse $IP > $path
elif [ $ch == 12 ]
then
nmap -Pn --traceroute --script traceroute-geolocation.nse -p 80 $IP > $path
fi
echo -e "\e[1;33mAll the output has been saved to: $path \e[0m"
elif [ "$save" == 1 ]; then
if [ $ch == 1 ]
then
nmap -Pn-sV -sC $IP
elif [ $ch == 2 ]
then
nmap -Pn -sP --script discovery $IP
elif [ $ch == 3 ]
then
nmap -Pn --script   vuln $IP
elif [ $ch == 4 ]
then
nmap -Pn -d  --script  exploit $IP
elif [ $ch == 5 ]
then
nmap -Pn --script  ftp-bounce $IP
elif [ $ch == 6 ]
then
nmap -Pn  --script  smb-enum-shares $IP
elif [ $ch == 7 ]
then
nmap -Pn  --script  mysql-info $IP
elif [ $ch == 8 ]
then
nmap -Pn -sV --script=ssl-heartbleed.nse $IP
elif [ $ch == 9 ]
then
nmap -Pn -sV --script=smb* $IP
elif [ $ch == 10 ]
then
nmap -Pn --script dns-brute.nse $IP
elif [ $ch == 11 ]
then
nmap -Pn --script hostmap-bfk.nse $IP
elif [ $ch == 12 ]
then
nmap -Pn --traceroute --script traceroute-geolocation.nse -p 80 $IP
fi
else
chmod +x N.sh
./N.sh
fi
echo 
echo -e '\033[4;32m''\033[7;34m'"I Hope You Enjoying Me, Thanks For Using me\e[0m"' \033[1;32m'
read -p "             To run another scan Hit Enter"
./Di.sh
