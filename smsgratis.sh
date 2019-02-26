#!/bin/bash
# Widhisec | JANGAN DI RECODE GAN HARGAI PEMBUATNYA !
clear
# waRna
RED="\033[0;31m"
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\e[96m'
NC='\033[0m' # No Color
# mULai
function check(){
if [ -z $(command -v grep) ]; then
	printf "grep belom di install"
fi
}
check
function bannner(){
bAnn3er=" $YELLOW
 {============================================}
           [IG -> @widhisec]
\t _______ _______ _______ 
\t |______ |  |  | |______ $GREEN
\t ______| |  |  | ______|  [mass sms gratiz]
\t         [ z ] $NC
\t [ Create by WidhiSec ]
 {============================================}
"
printf "$bAnn3er"
}
bannner
function g3T(){
	      urLZ="http://bnerr.com/api/sms.php?send=1&no=$list&msg=$pesan&sender=LOLZ"
	      gAZ=$(echo -e $urLZ | tr [:space:] "+")
	      cuA="curl $gAZ -s"
	      ReGe=$(${cuA} | grep -Po '(?<=status":").*?(?=")' )
	      printf "${CYAN} [!] STATUS : $ReGe\n"
	      printf "$NC"
	      exit 2
}
echo -n " - LIST   : "
read list
echo -n " - PESAN  : "
read pesan
if [ ! -f $list ]; then
	echo "$list No Such File"
	exit
fi
IFS=$'\r\n' GLOBIGNORE='*' command eval 'list=($(cat $list))'
for (( i = 0; i < "${#list[@]}"; i++ )); do
	passlist="${list[$i]}"
	g3T $list $pesan $kiri3
done
# EnD
