#!/bin/bash
# Widhisec | JANGAN DI RECODE GAN HARGAI PEMBUATNYA !
clear;
GREEN=$(tput setaf 2) #HIJAU
RED=$(tput setaf 1) #MERAH
CYAN=$(tput setaf 6) #CYAN
WHITE=$(tput setaf 7) #PUTIH
NORMAL=$(tput sgr0) #NORMAL
BANNER()
{
printf "
                                                                  
_______ _______ _______
 |______ |  |  | |______
 ______| |  |  | ______|
 [ SmS Gratis ] $WHITE
 [ Create by WidhiSec ] $CYAN
 [ fb.me/widhisec ] $NORMAL
"
}
BANNER
Get(){
curl http://scid.ga/api/sms.php?send=$brp&no=$xx&msg=$pesan&sender=$kirkm
}
echo -n "BRP   : " read brp
echo -n "NOMOR : " read xx
echo -n "PESAN : " read pesan
echo -n "SENDR : " read kirkm
Get $brp $xx $pesan $kirim
