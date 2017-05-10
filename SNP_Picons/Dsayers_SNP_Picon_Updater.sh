#Remove Existing Picons
echo 'Cleaning up existing Picons - Please Wait'
sleep 4
opkg remove enigma2-plugin-picons-snp-full.100x60-86x46.light.on.transparent --force-remove >/dev/null 2>&1
opkg remove enigma2-plugin-picons-snp-full.220x132-190x102.light.on.transparent --force-remove >/dev/null 2>&1
rm -rv /media/hdd/SkyQ >/dev/null 2>&1
rm -rv /media/hdd/picons >/dev/null 2>&1
rm -rv /media/hdd/picon >/dev/null 2>&1
rm -rv /picon >/dev/null 2>&1
mkdir -p /media/hdd/SkyQ

#Download and unpack Channel SNP Picons
echo 'Standard SNP Picons downloading - Please Wait'
opkg install https://github.com/davesayers2014/Picon/blob/master/SNP_Picons/enigma2-plugin-picons-snp-full.100x60-86x46.light.on.transparent_2017-05-09--01-51-03_all.ipk?raw=true --force-depends >/dev/null 2>&1
echo 'Standard SNP Picons being moved into correct position - Please Wait'
mv -f /picon /hdd/
echo 'SkyQ SNP Picons downloading - Please Wait'
opkg install https://github.com/davesayers2014/Picon/blob/master/SNP_Picons/enigma2-plugin-picons-snp-full.220x132-190x102.light.on.transparent_2017-05-09--01-51-03_all.ipk?raw=true --force-depends >/dev/null 2>&1
echo 'SkyQ SNP Picons being moved into correct position - Please Wait'
mv -f /picon /hdd/SkyQ
echo 'OK - All done'
sleep 5
exit 0
fi
