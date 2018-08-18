#!/bin/bash
clear
echo -e "\e[1;33m       Script Coded By =>   \033[5;37m \033[41m ♥ Vᵢₖₐₛ  Cₕₐᵤdₕₐᵣy ♥  \e[0m"
echo -e "\e[1;33m       Published By =>        \033[5;37m \033[44m   www.gkaim.com   \e[0m"
echo -e "\033[1;36m\033[3;36m Please use against target that you own or have permission to \e[0m"
echo
echo ~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^~~~~~~~~~~~~~~~~~
echo -e "              \033[1;32m\033[5;37m\033[41m DANZER ZONE => DOS / DDOS \e[0m""                 "
echo ~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^~~~~~~~~~~~~~~~~~
echo
echo " Your System must be Capable to use Hping3 otherwise please Go back ,Bcz it may Harm your System Very Badly"
echo 
echo
echo -e "\033[1;33m1.\033[1;31m   HPING3 SCAN \e[0m"
echo -e "\033[1;33m2.\033[1;31m   HPING3 FLOODING \e[0m"
echo -e "\033[1;33m3.\033[1;31m   HPING3 DOS/DDOS \e[0m"
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
if [ $ch == 1 ]
then
chmod +x Hs.sh
./Hs.sh
fi
if [ $ch == 2 ]
then
chmod +x Hf.sh
./Hf.sh
fi
if [ $ch == 3 ]
then
chmod +x Hd.sh
./Hd.sh
else
chmod N.sh
./N.sh
fi

