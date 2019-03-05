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
	      z="
";EBz='Ge\n';gz='AZ -';DBz=' $Re';Iz='hp?s';jz='=$($';xz='${CY';Yz='| tr';Kz='1&no';Mz='st&m';uz=''\'' )';Rz='=LOL';Fz='om/a';Hz='ms.p';Xz='rLZ ';CBz='US :';oz=' '\''(?';Ez='rr.c';Gz='pi/s';sz='.*?(';mz='grep';ABz='[!] ';Vz='ho -';FBz='"';qz='atus';wz='tf "';Dz='/bne';Wz='e $u';Cz='tp:/';Uz='$(ec';Tz='gAZ=';Nz='sg=$';vz='prin';Az='urLZ';bz=':] "';Qz='nder';Pz='n&se';BBz='STAT';az='pace';cz='+")';Sz='Z"';pz='<=st';GBz='$NC"';kz='{cuA';ez='"cur';nz=' -Po';Lz='=$li';yz='AN} ';dz='cuA=';HBz='exit';tz='?=")';IBz=' 2';Bz='="ht';lz='} | ';Oz='pesa';hz='s"';fz='l $g';iz='ReGe';Jz='end=';Zz=' [:s';rz='":")';
eval "$Az$Bz$Cz$Dz$Ez$Fz$Gz$Hz$Iz$Jz$Kz$Lz$Mz$Nz$Oz$Pz$Qz$Rz$Sz$z$Tz$Uz$Vz$Wz$Xz$Yz$Zz$az$bz$cz$z$dz$ez$fz$gz$hz$z$iz$jz$kz$lz$mz$nz$oz$pz$qz$rz$sz$tz$uz$z$vz$wz$xz$yz$ABz$BBz$CBz$DBz$EBz$FBz$z$vz$wz$GBz$z$HBz$IBz"
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
