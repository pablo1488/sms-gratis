#!/bin/bash
# SMS GRATIS VERSION BASH SHELL
# _______________________________
GREEN=$(tput setaf 2) #HIJAU
WHITE=$(tput setaf 7) #PUTIH
CYAN=$(tput setaf 6)
RED=$(tput setaf 1) 
NORMAL=$(tput sgr0)
function finish() {
        printf "[ keluar...]"
        exit
}
LIMITATOR=15
trap finish SIGINT
function ngchecking(){
if [[ -z $(command -v curl) ]]; then
  printf "sepertinya curl belom di install !! \n"
####################################
elif [[ -z $(command -v grep) ]]; then
  printf "sepertinya grep belom di install !! \n"
elif [[ -z $(command -v tput) ]]; then
  printf "sepertinya tput belom di install !!"
fi
}
ngchecking
AGENT=("Mozilla/5.0 (Linux; Android 4.4.2; Nexus 4 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.114 Mobile Safari/537.36")
function nebanner(){
shuf -e "
${RED}  
#############################################################################
                                   _______       .___      
________  ______ ____   ____  ____ \   _  \    __| _/____  
\___   / /  ___// __ \_/ ___\/ ___\/  /_\  \  / __ |/ __ \ 
${CYAN} /    /  \___ \\  ___/\  \__\  \___\  \_/   \/ /_/ \  ___/ - ${CYAN}CREW.ID
/_____ \/____  >\___  >\___  >___  >\_____  /\____ |\___  >
      \/     \/     \/     \/    \/       \/      \/    \/ 
                   [^]SMS GRATISS BY WIDHISEC[^]
#############################################################################
"

}
function negetgan(){
  getcookie=$(curl -s 'http://sms.payuterus.biz/alpha/index.php?a=keluar' -I \
           -H 'Connection: keep-alive' \
           -H 'Upgrade-Insecure-Requests: 1' \
           -H "User-Agent: $AGENT" \
           -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' \
           -H 'Referer: http://sms.payuterus.biz/alpha/send.php' --compressed|grep -Po "(?<=PHPSESSID=)[^,]*"|cut -d ';' -f1)
         bypass=$(curl -s 'http://sms.payuterus.biz/alpha/index.php?a=keluar' \
           -H 'Connection: keep-alive' \
           -H 'Upgrade-Insecure-Requests: 1' \
           -H "User-Agent: $AGENT" \
           -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3" \
           -H 'Referer: http://sms.payuterus.biz/alpha/send.php' \
           -H "Cookie: PHPSESSID=${getcookie};" --compressed | grep "value" | grep "name" | grep -oP 'value="\K[^"]+')
          okeey1=$(curl -s 'http://sms.payuterus.biz/alpha/index.php?a=keluar' \
           -H 'Connection: keep-alive' \
           -H 'Upgrade-Insecure-Requests: 1' \
           -H "User-Agent: $AGENT" \
           -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' \
           -H 'Referer: http://sms.payuterus.biz/alpha/send.php' \
           -H 'Accept-Encoding: gzip, deflate' \
           -H 'Accept-Language: id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7' \
           -H "Cookie: PHPSESSID=${getcookie};" --compressed | grep "span" | grep -Po "\d \S \d")
         if [[ $okeey1 =~ "+" ]]; then
           ok=`expr $okeey1 | bc`
         elif [[ $okeey =~ "-" ]]; then
          ok=`expr $okeey1 | bc`
         elif [[ $okeey1 =~ "/" ]]; then
           ok=`expr $okeey1`
         fi
         #elif [[ $okeey =~ "x" ]]; then
         #  ok=`expr $okeey1 | bc`
         #fi
         okeey=$(curl -s "http://sms.payuterus.biz/alpha/send.php" \
         -H 'Connection: keep-alive' \
         -H 'Pragma: no-cache' \
         -H 'Cache-Control: no-cache' \
         -H 'Origin: http://sms.payuterus.biz' \
         -H 'Upgrade-Insecure-Requests: 1' \
         -H 'Content-Type: application/x-www-form-urlencoded' \
         -H "User-Agent: $AGENT" \
         -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' \
         -H 'Referer: http://sms.payuterus.biz/alpha/' \
         -H 'Accept-Encoding: gzip, deflate' \
         -H 'Accept-Language: id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7' \
         -H "Cookie: PHPSESSID=${getcookie};" --data "nohp=$now&pesan=$psn&captcha=$ok&key=$bypass" --compressed --insecure | grep -o 'value="[^"]*"')
         if [[ $okeey =~ "SMS Gratis Telah Dikirim" ]]; then
             echo -e "${GREEN}[+] ${NORMAL}mantap berhasil kirim gayn"
         else
             echo -e "${RED}[+] ${NORMAL}gagal kirim nih gayn"
         fi
}
nebanner
echo -en "[+] NOMOR NYA :"; read now
echo -en "[+] PESAN NYA :"; read psn
(
for x in okeey; do
     negetgan "$now" "$psn" "$okeey" &
done
wait
)