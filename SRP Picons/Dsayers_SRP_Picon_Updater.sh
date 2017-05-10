#Remove Existing Picons
echo 'Cleaning up existing Picons - Please Wait'
sleep 4
opkg remove enigma2-plugin-picons-srp-full.100x60-86x46.light.on.transparent --force-remove >/dev/null 2>&1
opkg remove enigma2-plugin-picons-srp-full.220x132-190x102.light.on.transparent --force-remove >/dev/null 2>&1
rm -rv /media/hdd/SkyQ >/dev/null 2>&1
rm -rv /media/hdd/picons >/dev/null 2>&1
rm -rv /media/hdd/picon >/dev/null 2>&1
rm -rv /picon >/dev/null 2>&1
mkdir -p /media/hdd/SkyQ

#Download and unpack Channel SNP Picons
echo 'Standard SRP Picons downloading - Please Wait'
opkg install https://github.com/davesayers2014/Picon/blob/master/SRP%20Picons/enigma2-plugin-picons-srp-full.100x60-86x46.light.on.transparent_2017-05-09--01-51-03_all.ipk?raw=true --force-depends >/dev/null 2>&1
echo 'Standard SRP Picons being moved into correct position - Please Wait'
mv -f /picon /hdd/
echo 'SkyQ SRP Picons downloading - Please Wait'
opkg install https://github.com/davesayers2014/Picon/blob/master/SRP%20Picons/enigma2-plugin-picons-srp-full.220x132-190x102.light.on.transparent_2017-05-09--01-51-03_all.ipk?raw=true --force-depends >/dev/null 2>&1
echo 'SkyQ SRP Picons being moved into correct position - Please Wait'
mv -f /picon /hdd/SkyQ
echo 'OK - All done'
sleep 5
exit 1
fi
