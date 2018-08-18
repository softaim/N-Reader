#!/bin/bash
clear
echo -e "\e[1;33m       Script Coded By =>   \033[5;37m \033[41m ♥ Vᵢₖₐₛ  Cₕₐᵤdₕₐᵣy ♥  \e[0m"
echo -e "\e[1;33m       Published By =>        \033[5;37m \033[44m   www.gkaim.com   \e[0m"
echo -e "\033[1;36m\033[3;36m Please use against target that you own or have permission to \e[0m"
echo
echo _____________----------------------_________________
echo -e "                \033[1;32m\033[5;37m\033[41m  HPING3 SCANING \e[0m""                 "
echo _____________----------------------_________________
echo
echo " Your System must be Capable to use Hping3 otherwise please Go back ,Bcz it may Harm your System Very Badly"
echo 
echo
read -p "Please enter the IP Address or URL of Target: " I
echo
echo -e "\033[1;33m1.\033[1;31m Idle Scanning  \e[0m"
echo -e "\033[1;33m2.\033[1;31m ICMP Ping \e[0m"
echo -e "\033[1;33m3.\033[1;31m ACK scan \e[0m"
echo -e "\033[1;33m4.\033[1;31m SYN scan \e[0m"
echo -e "\033[1;33m5.\033[1;31m UDP Scan \e[0m"
echo -e "\033[1;33m6.\033[1;31m Intercept traffic containing HTTP signature \e[0m"
echo -e "\033[1;33m7.\033[1;31m Router Frame/Packet Flooding \e[0m"
echo -e "\033[1;33m8.\033[1;31m Scan entire SUBNET for live host \e[0m"
echo -e "\033[1;33m9.\033[1;31m ICMP time-stamp \e[0m"
echo -e "\033[1;33m10.\033[1;31m Router Port Testing \e[0m"
echo -e "\033[1;33m11.\033[1;31m Find out port between 1000 are open on the server or not \e[0m"
echo -e "\033[1;33m12.\033[1;31m IPPID /Packet Sequence Inspection \e[0m"
echo
echo -e "\033[1;33m0.\033[1;36m MAIN MENU \e[0m"
echo
read -p "Enter your choice: " ch
if [ $ch == 0 ]
then
cd ..
chmod +X N-Reader.sh
./N-Reader.sh
fi
if [ $ch -le 12 ] 
then
echo
read -p "Enter Your Interface Name (ie- eth0, wlan0 ):-"  INT
echo
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
hping3 -I $INT -SA $I > $path
elif [ $ch == 2 ]
then
hping3 -1 $I > $path
elif [ $ch == 3 ]
then
hping3 -A $I –p 80 > $path
elif [ $ch == 4 ]
then
hping3 -8 50-56   –S $I -V > $path
elif [ $ch == 5 ]
then
hping3 -2 $I –p 80 > $path
elif [ $ch == 6 ]
then
hping3 -9 HTTP – i $INT > $path
elif [ $ch == 7 ]
then
hping3 -V -c 1000000 -d 120 -S -w 64 -p 445 -s 445 --flood --rand-source $I > $path
elif [ $ch == 8 ]
then
hping3 –F  –P  –U $I –p 80 > $path
elif [ $ch == 9 ]
then
hping3 –1 $I – -icmp-ts –c 2 > $path
elif [ $ch == 10 ]
then
hping3 -2 $I –p 80 > $path
elif [ $ch == 11 ]
then
hping3 – 8 50-1000 –S 8.8.8.8 > $path
elif [ $ch == 12 ]
then
hping2 -c 10 -i 1 -p 80 -S $I > $path
fi
echo -e "\e[1;33mAll the output has been saved to: $path \e[0m"
elif [ "$save" == 1 ]; then
if [ $ch == 1 ]
then
hping3 -I $INT -SA $I
elif [ $ch == 2 ]
then
hping3 -1 $I
elif [ $ch == 3 ]
then
hping3 -A $I –p 80
elif [ $ch == 4 ]
then
hping3 -8 50-56   –S $I -V
elif [ $ch == 5 ]
then
hping3 -2 $I –p 80
elif [ $ch == 6 ]
then
hping3 -9 HTTP – i $INT
elif [ $ch == 7 ]
then
hping3 -V -c 1000000 -d 120 -S -w 64 -p 445 -s 445 --flood --rand-source $I
elif [ $ch == 8 ]
then
hping3 –F  –P  –U $I –p 80
elif [ $ch == 9 ]
then
hping3 –1 $I – -icmp-ts –c 2
elif [ $ch == 10 ]
then
hping3 -2 $I –p 80
elif [ $ch == 11 ]
then
hping3 – 8 50-1000 –S 8.8.8.8
elif [ $ch == 12 ]
then
hping2 -c 10 -i 1 -p 80 -S $I
fi
else
chmod +x N.sh
./N.sh
fi
echo 
echo -e '\033[4;32m''\033[7;34m'"I Hope You Enjoying Me, Thanks For Using me\e[0m"' \033[1;32m'
read -p "             To run another scan Hit Enter"
./Hs.sh

