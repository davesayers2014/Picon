#!/bin/sh
echo '############################'
echo '# DSAYERS SRP PICON UPDATER#'
echo '############################'
echo $LINE
echo 'OUR LATEST PICONS JUST GOT BETTER'
echo 'DSAYERS PICONS VERSION 1.2'
echo $LINE
sleep 4
echo 'THIS PLUGIN WILL ATTEMPT TO DOWNLOAD PICONS TO HDD AND HDD/SKYQ'
echo 'LOCATIONS AND THEN UPDATE'
echo 'YOUR PICONS TO THE LATEST PICONS'
echo $LINE
echo 'LETS BEGIN THE PROCESS'

#Remove Existing Picons
echo $LINE
echo $LINE
echo 'CLEANING UP EXISTING PICONS - PLEASE WAIT'
opkg remove enigma2-plugin-picons-snp-full.100x60-86x46.light.on.transparent --force-remove >/dev/null 2>&1
opkg remove enigma2-plugin-picons-snp-full.220x132-190x102.light.on.transparent --force-remove >/dev/null 2>&1
rm -rv /media/hdd/SkyQ >/dev/null 2>&1
rm -rv /media/hdd/picons >/dev/null 2>&1
rm -rv /media/hdd/picon >/dev/null 2>&1
rm -rv /picon >/dev/null 2>&1
mkdir -p /media/hdd/SkyQ
sleep 2
echo $LINE

#Download and unpack Standard SNP Picons
echo 'STANDARD SNP PICONS DOWNLOADING - PLEASE WAIT'
echo $LINE
opkg install https://github.com/davesayers2014/Picon/blob/master/SNP_Picons/enigma2-plugin-picons-snp-full.100x60-86x46.light.on.transparent_2017-05-11--01-42-40_all.ipk?raw=true --force-depends >/dev/null 2>&1
echo 'STANDARD SNP PICONS BEING MOVED INTO CORRECT POSITION - PLEASE WAIT'
mv -f /picon /hdd/
echo $LINE
echo $LINE

#Download and unpack SkyQ SNP Picons
echo 'SkyQ SNP PICONS DOWNLOADING - PLEASE WAIT'
echo $LINE
opkg install https://github.com/davesayers2014/Picon/blob/master/SNP_Picons/enigma2-plugin-picons-snp-full.220x132-190x102.light.on.transparent_2017-05-11--01-42-40_all.ipk?raw=true --force-depends >/dev/null 2>&1
echo 'SkyQ SNP PICONS BEING MOVED INTO CORRECT POSITION - PLEASE WAIT'
mv -f /picon /hdd/SkyQ
sleep 4
echo $LINE
echo 'OK - All DONE PRESS EXIT'
exit 1
fi