#!/bin/bash
clear
echo -e "                        '\033[9;31m'\033[1;32m\033[5;37m\033[41m OH ! No.... \e[0m"

echo -e "'\033[9;31m'\033[1;32m\033[5;37m\033[41m SORRY WRONG SELECTION \e[0m"
echo
echo -e "                        '\033[9;31m'\033[1;32m\033[5;37m\033[41m ACCESS DENIED ! \e[0m"
echo
echo -e "\033[1;32m PLEASE CHOOSE RIGHT NUMBER  \e[0m"
echo 
echo -e "\033[1;37m Press \033[1;33m1\e[0m to go \033[44m PORT SCAN \e[0m"
echo -e "\033[1;37m Press \033[1;33m2\e[0m to go \033[44m MIXED SCAN \e[0m"
echo -e "\033[1;37m Press \033[1;33m3\e[0m to go \033[44m SERVICE and OS Deduction\e[0m"
echo -e "\033[1;37m Press \033[1;33m4\e[0m to go \033[44m to go NET BIOS SCAN\e[0m"
echo -e "\033[1;37m Press \033[1;33m5\e[0m to go \033[44m NIKTO SCAN \e[0m"
echo -e "\033[1;37m Press \033[1;33m6\e[0m to go \033[44m HTTPS SERVICE INFO \e[0m"
echo -e "\033[1;37m Press \033[1;33m7\e[0m to go \033[44m IP ADDRESS INFO \e[0m"
echo -e "\033[1;37m Press \033[1;33m8\e[0m to go \033[44m DETECT HEARTBLEED SSL Vulnerability \e[0m"
echo -e "\033[1;37m Press \033[1;33m9\e[0m to go \033[44m DIGGING DEEPER  WITH NSE Scripts\e[0m "
echo -e "\033[1;37m Press \033[1;33m10\e[0m to go \033[41m DANGEROUS ZONE- DOS/DDOS \e[0m"
echo -e "\033[1;37m Press \033[1;33m11\e[0m to go \033[44m HPING3 SCANNING \e[0m"
echo -e "\033[1;37m Press \033[1;33m12\e[0m to go \033[44m HPING3 FLOOFING \e[0m"
echo -e "\033[1;37m Press \033[1;33m13\e[0m to go \033[44m HPING3 DOS/DDOS \e[0m"
echo -e '\033[1;32m' 
read -p " OR Hit Enter To go Main Menu :" N
if [ $N == 1 ]
then
chmod +x Po.sh
./Po.sh
fi
if [ $N == 3 ]
then
chmod +x SO.sh
./SO.sh
fi
if [ $N == 2 ]
then
chmod +x Mix.sh
./Mix.sh
fi
if [ $N == 4 ]
then
chmod +x Nb.sh
./Nb.sh
fi
if [ $N == 5 ]
then
chmod +x Nk.sh
./Nk.sh
fi
if [ $N == 6 ]
then
chmod +x Ht.sh
./Ht.sh
fi
if [ $N == 8 ]
then
chmod +x De.sh
./De.sh
fi
if [ $N == 7 ]
then
chmod +x Ip.sh
./Ip.sh
fi
if [ $N == 9 ]
then
chmod +x Di.sh
./Di.sh
fi
if [ $N == 10 ]
then
chmod +x Hp.sh
./Hp.sh
fi
if [ $N == 11 ]
then
chmod +x Hs.sh
./Hs.sh
fi
if [ $N == 12 ]
then
chmod +x Hf.sh
./Hf.sh
fi
if [ $N == 13 ]
then
chmod +x Hd.sh
./Hd.sh
else
cd ..
chmod +x N-Reader.sh,
./N-Reader.sh
fi
