#! /bin/bash
clear



echo                                                  
echo "       _____   __     ________            _________    "    
echo "       ___  | / /     ___  __ \__________ ______  /____________   "
echo "       __ / |/ /_______/  /_/ /  _ \  __ '/  __  /_  _ \_  ___/  "
echo "        _/ /| / /_  _ /  /_, _//  __/ /_/ // /_/ / /  __/  /    "
echo "        /_/ |/       /_/ |_| \___/\__,_/ \__,_/  \___//_/       "
echo  "              ˜”*°•.˜”*°•. M҉ ҉ ҉Y҉ ҉ ҉A҉ ҉ ҉I҉ ҉ ҉M҉ .•°*”˜.•°*”˜"  
echo                                                             
echo -e  "\033[1;35m This is an easy and simple bash script to make Network Scan Easier  \e[0m"
echo -e "\e[1;33m       Script Coded By =>   \033[5;37m \033[41m ♥ Vᵢₖₐₛ  Cₕₐᵤdₕₐᵣy ♥  \e[0m"
echo -e "\e[1;33m       Published By =>        \033[5;37m \033[44m   www.gkaim.com   \e[0m"
echo -e "\033[1;36m\033[3;36m Please use against target that you own or have permission to \e[0m"
echo ____________------------------------_________________
echo -e "\033[1;37m Press \033[1;33m1\e[0m For      \033[42m PORT SCAN \e[0m                "
echo ____________------------------------_________________
echo
echo ____________------------------------_________________
echo -e "\033[1;37m Press \033[1;33m2\e[0m For      \033[42m MIXED SCAN \e[0m                "
echo ____________------------------------_________________
echo
echo _____________------------------------_________________
echo -e "\033[1;37m Press \033[1;33m3\e[0m For \033[42m SERVICE & OS DETECTION  \e[0m             "
echo _____________------------------------_________________
echo
echo _____________------------------------_________________
echo -e "\033[1;37m Press \033[1;33m4\e[0m For      \033[42m  NET BIOS  \e[0m""                 "
echo _____________------------------------_________________
echo
echo _____________------------------------_________________
echo -e "\033[1;37m Press \033[1;33m5\e[0m For      \033[42m NIKTO SCAN \e[0m""                 "
echo _____________------------------------_________________
echo
echo _____________--------------------------_______________
echo -e "\033[1;37m Press \033[1;33m6\e[0m For \033[42m HTTP SERVICE INFORMATION \e[0m""                 "
echo _____________------------------------_________________
echo
echo _____________-------------------------________________
echo -e "\033[1;37m Press \033[1;33m7\e[0m For \033[42m IP ADDRESS INFORMATION \e[0m""                 "
echo _____________------------------------_________________
echo
echo _____________-------------------------------------_______________
echo -e "\033[1;37m Press \033[1;33m8\e[0m For \033[42m DETECT HEARTBLEED SSL Vulnerability \e[0m""                 "
echo _____________-------------------------------------_______________
echo 
echo _____________----------------------------------________________
echo -e "\033[1;37m Press \033[1;33m9\e[0m For \033[42m DIGGING DEEPER  WITH NSE Scripts \e[0m""                 "
echo _____________----------------------------------_________________
echo 
echo ~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^~~~~~~~~~~~~~~~~~
echo -e "\033[1;37m Press \033[1;33m10\e[0m For \033[41m DANZER ZONE => DOS / DDOS \e[0m""                 "
echo ~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^~~~~~~~~~~~~~~~~~
echo
read -p "Enter your choice: " ch
if [ $ch == 1 ]
then
cd Just
chmod +x Po.sh
./Po.sh
fi
if [ $ch == 2 ]
then
cd Just
chmod +x Mix.sh
./Mix.sh
fi
if [ $ch == 3 ]
then
cd Just
chmod +x SO.sh
./SO.sh
fi
if [ $ch == 4 ]
then
cd Just
chmod +x Nb.sh
./Nb.sh
fi
if [ $ch == 5 ]
then
cd Just
chmod +x Nk.sh
./Nk.sh
fi
if [ $ch == 6 ]
then
cd Just
chmod +x Ht.sh
./Ht.sh
fi
if [ $ch == 8 ]
then
cd Just
chmod +x De.sh
./De.sh
fi
if [ $ch == 7 ]
then
cd Just
chmod +x Ip.sh
./Ip.sh
fi
if [ $ch == 9 ]
then
cd Just
chmod +x Di.sh
./Di.sh
fi
if [ $ch == 10 ]
then
cd Just
chmod +x Hp.sh
./Hp.sh
else
cd Just
chmod +x N.sh
./N.sh
fi

